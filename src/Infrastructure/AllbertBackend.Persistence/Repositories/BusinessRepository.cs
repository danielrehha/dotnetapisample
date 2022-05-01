using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Exceptions;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Infrastructure.Persistence;

namespace AllbertBackend.Persistence.Repositories
{
    public class BusinessRepository : BaseRepository<AllbertBackend.Domain.Entities.Business>, IBusinessRepository
    {
        private readonly AllbertBackendDBContext _context;

        public BusinessRepository(AllbertBackendDBContext dbContext) : base(dbContext)
        {
            _context = dbContext;
        }

        public override async Task<IReadOnlyList<Business>> GetAllAsync()
        {
            var result = await _context.Businesses
                .Include(b => b.Details)
                .Include(b => b.Address)
                .Include(b => b.Contact)
                .Include(b => b.Avatar)
                .Include(b => b.PortfolioImages)
                .Include(b => b.SubscriptionInfo).ThenInclude(s => s.Subscription)
                .Include(b => b.Services)
                .Include(b => b.BusinessSettings)
                .ToListAsync();

            return result;
        }

        public async Task<bool> DoesBusinessExistByFirebaseUidAsync(string firebaseUid)
        {
            return await _context.Businesses.AnyAsync(b => b.FirebaseUid == firebaseUid);
        }

        public async Task<AllbertBackend.Domain.Entities.Business> GetByFirebaseUidAsync(string firebaseUid)
        {
            var result = await _context.Businesses
                .Include(b => b.Details)
                .Include(b => b.Address)
                .Include(b => b.Contact)
                .Include(b => b.Avatar)
                .Include(b => b.PortfolioImages)
                .Include(b => b.SubscriptionInfo).ThenInclude(s => s.Subscription)
                .Include(b => b.Services)
                .Include(b => b.BusinessSettings)
                .FirstOrDefaultAsync(b => b.FirebaseUid == firebaseUid);

            return result;
        }

        public async Task<BusinessAvatarImage> UploadAvatarImageAsync(Guid businessId, Guid fileGuid, string fileUrl)
        {
            var entity = await _context.BusinessAvatarImages
                .AsNoTracking()
                .FirstOrDefaultAsync(i => i.BusinessId == businessId);
            if (entity == null)
            {
                var image = new BusinessAvatarImage
                {
                    Id = fileGuid,
                    BusinessId = businessId,
                    PathUrl = fileUrl,
                };
                await _context.BusinessAvatarImages.AddAsync(image);
                await _context.SaveChangesAsync();
                return image;
            }

            entity.PathUrl = fileUrl;

            _context.BusinessAvatarImages.Update(entity);
            await _context.SaveChangesAsync();

            return entity;
        }

        public async Task<string> DeleteAvatarImageAsync(Guid businessId)
        {
            var entity = await _context.BusinessAvatarImages
                .AsNoTracking()
                .FirstOrDefaultAsync(i => i.BusinessId == businessId);
            if (entity == null)
            {
                return null;
            }

            _context.BusinessAvatarImages.Remove(entity);
            await _context.SaveChangesAsync();
            return entity.PathUrl;
        }

        public async Task<BusinessPortfolioImage> UploadPortfolioImageAsync(Guid businessId, Guid fileGuid,
            string fileUrl)
        {
            var image = new BusinessPortfolioImage
            {
                Id = fileGuid,
                BusinessId = businessId,
                PathUrl = fileUrl,
            };
            await _context.BusinessPortfolioImages.AddAsync(image);
            await _context.SaveChangesAsync();
            return image;
        }

        public async Task<string> DeletePortfolioImageAsync(Guid fileId)
        {
            var entity = await _context.BusinessPortfolioImages.FirstOrDefaultAsync(i => i.Id == fileId);
            if (entity == null)
            {
                return null;
            }

            _context.BusinessPortfolioImages.Remove(entity);
            await _context.SaveChangesAsync();
            return entity.PathUrl;
        }

        public async Task<List<Service>> GetServicesAsync(Guid businessId)
        {
            var result = await _context.Services
                .Where(s => s.BusinessId == businessId && s.Deleted == false)
                .ToListAsync();
            return result;
        }

        public async Task<Service> CreateServiceAsync(Service service)
        {
            await _context.Services.AddAsync(service);
            await _context.SaveChangesAsync();
            return service;
        }

        public async Task<Service> UpdateServiceAsync(Service service)
        {
            var entity = await _context.Services.FirstOrDefaultAsync(s => s.BusinessId == service.BusinessId);
            entity = service;
            _context.Services.Update(entity);
            await _context.SaveChangesAsync();
            return entity;
        }

        public async Task DeleteServiceAsync(Guid serviceId)
        {
            var service = await _context.Services.FirstOrDefaultAsync(s => s.Id == serviceId);
            if (service == null)
            {
                throw new ItemNotFoundException(nameof(service));
            }
        }

        public async Task<List<AllbertBackend.Domain.Entities.Employee>> GetEmployeeListAsync(Guid businessId)
        {
            var result = await _context.Employees
                .Where(e => e.BusinessId == businessId && e.Deleted == false)
                .Include(e => e.EmployeeInfo).ThenInclude(e => e.Services)
                .Include(e => e.Avatar)
                .ToListAsync();
            return result;
        }

        public async Task<List<BusinessPortfolioImage>> GetPortfolioListAsync(Guid businessId)
        {
            var result = await _context.BusinessPortfolioImages.Where(i => i.BusinessId == businessId).ToListAsync();
            return result;
        }

        public async Task<List<AllbertBackend.Domain.Entities.Employee>> GetEmployeeScheduleListAsync(EmployeeScheduleQueryDto queryDto)
        {
            var collection = _context.Employees.Where(e => e.BusinessId == queryDto.BusinessId && e.Deleted == false) as IQueryable<Employee>;

            if (queryDto.EmployeeIds.Any())
            {
                collection = collection.Where(e => queryDto.EmployeeIds.Contains(e.Id));
            }
            
            var employees = await collection
                .Include(e => e.EmployeeInfo)
                .ThenInclude(i => i.Services)
                .ThenInclude(s => s.Service)
                .Include(e => e.Avatar)
                .Include(
                    e => e.WorkDayList.OrderBy(w => w.Date).Where(e => e.StartTime >= queryDto.From && e.StartTime <= queryDto.Until))
                .Include(e => e.WorkBlockList)
                .Include(e => e.Appointments
                    .Where(a => (a.Status == 0 || a.EndDate < DateTime.UtcNow) && a.StartDate >= queryDto.From &&
                                a.StartDate <= queryDto.Until))
                .ThenInclude(a => a.Service)
                .Include(e => e.Appointments)
                .ThenInclude(a => a.Customer)
                .ThenInclude(c => c.CustomerInfo)
                .Include(e => e.Appointments)
                .ThenInclude(a => a.Customer)
                .ThenInclude(c => c.Avatar)
                .ToListAsync();
            
            return employees;
        }

        public async Task<List<AllbertBackend.Domain.Entities.Business>> GetFeaturedBusinessListAsync()
        {
            var result = await _context.Businesses
                .Include(b => b.Address)
                .Include(b => b.Details)
                .Include(b => b.Contact)
                .Include(b => b.Avatar)
                .Take(20)
                .ToListAsync();

            return result;
        }

        public async Task<List<Appointment>> GetBusinessAppointmentListAsync(Guid businessId, AppointmentStatus status)
        {
            var query = _context.Appointments
                .Include(e => e.Service)
                .Include(e => e.Employee).ThenInclude(e => e.Avatar)
                .Include(a => a.Employee).ThenInclude(a => a.EmployeeInfo)
                .Include(a => a.Customer).ThenInclude(a => a.CustomerInfo)
                .Where(a => a.BusinessId == businessId);

            dynamic result = null;

            if (status == AppointmentStatus.Active)
            {
                result = await query.Where(a => a.Status == 0).ToListAsync();
            }

            if (status == AppointmentStatus.InReview)
            {
                result = await query.Where(a => a.Status == 1).ToListAsync();
            }

            if (status == AppointmentStatus.Reviewed)
            {
                result = await query.Where(a => a.Status == 2 || a.Status == 3).ToListAsync();
            }

            if (status == AppointmentStatus.Deleted)
            {
                result = await query.Where(a => a.Status == 4 || a.Status == 5).ToListAsync();
            }

            return result;
        }

        public async Task<List<AllbertBackend.Domain.Entities.Employee>> GetScheduleAsync(Guid businessId)
        {
            var result = await _context.Employees
                .Where(e => e.BusinessId == businessId)
                .Include(e => e.EmployeeInfo)
                .Include(e => e.Avatar)
                .Include(e => e.Settings)
                .Include(e => e.WorkDayList.OrderBy(w => w.Date))
                .ThenInclude(w => w.PauseList.OrderBy(p => p.StartTime))
                .OrderBy(e => e.CreatedOn)
                .ToListAsync();


            return result;
        }

        public async Task<PagedList<Appointment>> GetBusinessPagedAppointmentListAsync(Guid businessId,
            BusinessAppointmentQueryParameters parameters)
        {
            var collection = _context.Appointments as IQueryable<Appointment>;

            collection = _context.Appointments
                    .Where(a => a.BusinessId == businessId)
                ;

            if (!string.IsNullOrWhiteSpace(parameters.EmployeeId.ToString()))
            {
                collection = collection.Where(a => a.EmployeeId == parameters.EmployeeId);
            }

            if (!string.IsNullOrWhiteSpace(parameters.ServiceId.ToString()))
            {
                collection = collection.Where(a => a.ServiceId == parameters.ServiceId);
            }

            if (!string.IsNullOrWhiteSpace(parameters.CustomerFlair))
            {
                var searchQuery = parameters.CustomerFlair.Trim();
                collection = collection.Where(a =>
                    (a.Customer.CustomerInfo.FirstName + " " + a.Customer.CustomerInfo.LastName).ToLower()
                    .Contains(searchQuery.ToLower())
                    || (a.Customer.CustomerInfo.LastName + " " + a.Customer.CustomerInfo.FirstName).ToLower()
                    .Contains(searchQuery.ToLower())
                    || a.Customer.CustomerInfo.Phone.Contains(searchQuery));
            }

            if (parameters.Date != null)
            {
                collection = collection.Where(a => a.StartDate.Year == parameters.Date.Value.Year
                                                   && a.StartDate.Month == parameters.Date.Value.Month
                                                   && a.StartDate.Day == parameters.Date.Value.Day);
            }

            if (parameters.Status != null)
            {
                collection = collection.Where(a => a.Status == parameters.Status);
            }

            if (parameters.OrderByDescending != null)
            {
                collection = collection.OrderByDescending(a => a.StartDate);
            }
            else
            {
                collection = collection.OrderBy(a => a.StartDate);
            }

            collection = collection
                .Include(e => e.Employee).ThenInclude(e => e.EmployeeInfo)
                .Include(e => e.Employee).ThenInclude(e => e.Avatar)
                .Include(e => e.Service)
                .Include(c => c.Customer).ThenInclude(c => c.CustomerInfo)
                .Include(c => c.Customer).ThenInclude(c => c.Avatar);

            return await PagedList<Appointment>.CreateAsync(collection, parameters.PageNumber, parameters.PageSize);
        }

        public async Task<PagedList<CustomerListView>> GetBusinessCustomerListAsync(Guid businessId,
            BusinessCustomerQueryParameters parameters)
        {
            var collection = _context.Customers
                .Include(a => a.CustomerInfo)
                .Include(a => a.Appointments)
                .Include(a => a.BanList)
                .Where(c => c.Appointments.Any(a => a.BusinessId == businessId))
                .Select((c) => new CustomerListView
                {
                    Customer = c,
                    AppointmentCount = c.Appointments.Where(a => a.BusinessId == businessId).Count(),
                    Banned = c.BanList.Contains(new BusinessCustomerBan {BusinessId = businessId, CustomerId = c.Id}),
                });

            var collection2 = _context.Customers.Select(c => new CustomerListView
            {
                Customer = c,
                AppointmentCount = c.Appointments.Count,
                Banned = c.BanList.Contains(new BusinessCustomerBan {BusinessId = businessId, CustomerId = c.Id}),
            });

            if (parameters.Banned != null)
            {
                collection = collection.Where(a => a.Banned == parameters.Banned);
            }

            if (parameters.OrderBy != null)
            {
                if (parameters.OrderBy == "appointmentCountDescending")
                {
                    collection = collection.OrderByDescending(a => a.AppointmentCount);
                }

                if (parameters.OrderBy == "appointmentCountAscending")
                {
                    collection = collection.OrderBy(a => a.AppointmentCount);
                }
            }

            if (!string.IsNullOrWhiteSpace(parameters.CustomerFlair))
            {
                var result =
                    await PagedList<CustomerListView>.CreateAsync(collection, parameters.PageNumber,
                        parameters.PageSize);
                var searchQuery = parameters.CustomerFlair.Trim();
                var resultFiltered = result.Where((a, b) =>
                    (a.Customer.CustomerInfo.FirstName + " " + a.Customer.CustomerInfo.LastName).ToLower()
                    .Contains(searchQuery.ToLower())
                    || (a.Customer.CustomerInfo.LastName + " " + a.Customer.CustomerInfo.FirstName).ToLower()
                    .Contains(searchQuery.ToLower())
                    || a.Customer.CustomerInfo.Phone.Contains(searchQuery)).ToList();
                var resultFilteredPaged =
                    PagedList<CustomerListView>.CreateFromEnumerable(resultFiltered, parameters.PageNumber,
                        parameters.PageSize);
                return resultFilteredPaged;
            }

            return await PagedList<CustomerListView>.CreateAsync(collection, parameters.PageNumber,
                parameters.PageSize);
        }

        public async Task<BusinessSettings> UpdateBusinessSettingsAsync(Guid businessId, BusinessSettings settings)
        {
            var entity = await _context.BusinessSettings.AsNoTracking().FirstAsync(b => b.BusinessId == businessId);
            if (entity == null)
            {
                await _context.BusinessSettings.AddAsync(settings);
                await _context.SaveChangesAsync();
                return entity;
            }

            settings.BusinessId = businessId;
            entity = settings;
            _context.BusinessSettings.Update(entity);
            _context.Entry(entity).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return entity;
        }

        public async Task<string> GetBusinessLanguageIso639CodeAsync(Guid businessId)
        {
            var result = await _context.BusinessSettings.FindAsync(businessId);
            return result.LangIso639Code;
        }

        public async Task BanCustomerAsync(Guid businessId, Guid customerId)
        {
            var entity = new BusinessCustomerBan()
            {
                BusinessId = businessId,
                CustomerId = customerId,
            };

            await _context.BusinessCustomerBanList.AddAsync(entity);

            await _context.SaveChangesAsync();
        }

        public async Task UnBanCustomerAsync(Guid businessId, Guid customerId)
        {
            var entity = await _context.BusinessCustomerBanList
                .FirstOrDefaultAsync(e =>
                    e.BusinessId == businessId &&
                    e.CustomerId == customerId);

            if (entity == null)
            {
                throw new NullReferenceException("Ban entity was not found.");
            }

            _context.BusinessCustomerBanList.Remove(entity);
            await _context.SaveChangesAsync();
        }

        public async Task<BusinessDetails> UpdateBusinessDetailsAsync(Guid businessId, BusinessDetails details)
        {
            var entity = await _context.BusinessDetails.FindAsync(businessId);
            if (entity == null)
            {
                await _context.BusinessDetails.AddAsync(details);
            }
            else
            {
                _context.Entry(entity).State = EntityState.Detached;
                _context.BusinessDetails.Update(details);
            }

            await _context.SaveChangesAsync();
            return details;
        }

        public async Task<BusinessAddress> UpdateBusinessAddressAsync(Guid businessId, BusinessAddress address)
        {
            var entity = await _context.BusinessAddresses.FindAsync(businessId);
            if (entity == null)
            {
                await _context.BusinessAddresses.AddAsync(address);
            }
            else
            {
                _context.Entry(entity).State = EntityState.Detached;
                _context.BusinessAddresses.Update(address);
            }

            await _context.SaveChangesAsync();
            return address;
        }

        public async Task<BusinessContact> UpdateBusinessContactAsync(Guid businessId, BusinessContact contact)
        {
            var entity = await _context.BusinessContacts.FindAsync(businessId);
            if (entity == null)
            {
                await _context.BusinessContacts.AddAsync(contact);
            }
            else
            {
                _context.Entry(entity).State = EntityState.Detached;
                _context.BusinessContacts.Update(contact);
            }

            await _context.SaveChangesAsync();
            return contact;
        }

        public async Task<List<EmployeeNameListDto>> GetEmployeeNameListAsync(Guid requestBusinessId)
        {
            var queryResult = await _context.Employees
                .Where(e => e.BusinessId == requestBusinessId)
                .Include(e => e.EmployeeInfo)
                .ToListAsync();

            var result = queryResult.Select(e => new EmployeeNameListDto()
                {
                    EmployeeId = e.Id,
                    FirstName = e.EmployeeInfo.FirstName,
                    LastName = e.EmployeeInfo.LastName,
                })
                .ToList();

            return result;
        }
    }
}