using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Application.Features;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Extensions;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList;
namespace AllbertBackend.Persistence.Repositories
{
    public class BusinessRepository : BaseRepository<Business>, IBusinessRepository
    {
        private readonly AllbertBackendDBContext _context;
        public BusinessRepository(AllbertBackendDBContext dbContext) : base(dbContext)
        {
            _context = dbContext;
        }
        public async Task<bool> DoesBusinessExistByFirebaseUidAsync(string firebaseUid)
        {
            return await _context.Businesses.AnyAsync(b => b.FirebaseUid == firebaseUid);
        }
        public async Task<Business> GetByFirebaseUidAsync(string firebaseUid)
        {
            var result = await _context.Businesses
                .Include(b => b.BusinessInfo)
                .Include(b => b.Avatar)
                .Include(b => b.PortfolioImages)
                .Include(b => b.SubscriptionInfo).ThenInclude(s => s.Subscription)
                .Include(b => b.Services)
                .Include(b => b.BusinessSettings)
                .FirstOrDefaultAsync(b => b.FirebaseUid == firebaseUid);
            return result;
        }
        public async Task<BusinessInfo> UpdateInfoAsync(BusinessInfo businessInfo)
        {
            var info = await _context.BusinessInfos
                .AsNoTracking()
                .FirstOrDefaultAsync(b => b.BusinessId == businessInfo.BusinessId);
            info = businessInfo;
            info.ModifiedOn = DateTime.UtcNow;
            _context.BusinessInfos.Update(info);
            await _context.SaveChangesAsync();
            return info;
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
                    ModifiedOn = DateTime.UtcNow,
                };
                await _context.BusinessAvatarImages.AddAsync(image);
                await _context.SaveChangesAsync();
                return image;
            }
            entity.PathUrl = fileUrl;
            entity.ModifiedOn = DateTime.UtcNow;
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
        public async Task<BusinessPortfolioImage> UploadPortfolioImageAsync(Guid businessId, Guid fileGuid, string fileUrl)
        {
            var image = new BusinessPortfolioImage
            {
                Id = fileGuid,
                BusinessId = businessId,
                PathUrl = fileUrl,
                ModifiedOn = DateTime.UtcNow,
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
                .Where(s => s.BusinessId == businessId)
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
        public async Task<List<Employee>> GetEmployeeListAsync(Guid businessId)
        {
            var result = await _context.Employees
                .Where(e => e.BusinessId == businessId)
                .Include(e => e.EmployeeInfo).ThenInclude(e => e.Services)
                .Include(e => e.Avatar)
                .Include(e => e.PortfolioImages)
                .ToListAsync();
            return result;
        }
        public async Task<Business> CreateBusinessAsync(string firebaseUid, BusinessInfo businessInfo)
        {
            var business = new Domain.Entities.Business
            {
                Id = businessInfo.BusinessId,
                FirebaseUid = firebaseUid,
                BusinessInfo = businessInfo,
                CreatedOn = DateTime.UtcNow,
                SubscriptionInfo = new SubscriptionInfo
                {
                    BusinessId = businessInfo.BusinessId,
                    CreatedOn = DateTime.UtcNow,
                    IsTrial = false,
                    SubscriptionId = 0,
                    DoesRenew = true,
                    EndsOn = DateTime.UtcNow.Add(new TimeSpan(30, 0, 0, 0, 0)),
                },
            };
            await _context.Businesses.AddAsync(business);
            await _context.SaveChangesAsync();
            business.SubscriptionInfo.Subscription = await _context.Subscriptions
                .FirstOrDefaultAsync(s => s.Id == business.SubscriptionInfo.SubscriptionId);
            return business;
        }
        public async Task<List<BusinessPortfolioImage>> GetPortfolioListAsync(Guid businessId)
        {
            var result = await _context.BusinessPortfolioImages.Where(i => i.BusinessId == businessId).ToListAsync();
            return result;
        }
        public async Task<List<Employee>> GetEmployeeScheduleListAsync(Guid businessId)
        {
            var employees = await _context.Employees
                .Where(e => e.BusinessId == businessId)
                .Include(e => e.EmployeeInfo)
                .Include(e => e.Avatar)
                .Include(e => e.AvailableTimeslots)
                .Include(e => e.Appointments).ThenInclude(a => a.Service)
                .Include(e => e.Appointments).ThenInclude(a => a.Customer).ThenInclude(c => c.CustomerInfo)
                .Include(e => e.Appointments).ThenInclude(a => a.Customer).ThenInclude(c => c.Avatar)
                .ToListAsync();
            return employees;
        }
        public async Task<List<Business>> GetFeaturedBusinessListAsync()
        {
            var result = await _context.Businesses
                .Include(b => b.BusinessInfo)
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
        public async Task<List<Employee>> GetScheduleAsync(Guid businessId)
        {
            var result = await _context.Employees
                .Where(e => e.BusinessId == businessId)
                .Include(e => e.EmployeeInfo)
                .Include(e => e.Avatar)
                .Include(e => e.ScheduleSettings)
                .Include(e => e.WorkDayList.OrderBy(w => w.Date)).ThenInclude(w => w.PauseList.OrderBy(p => p.StartTime))
                .OrderBy(e => e.CreatedOn)
                .ToListAsync();
            return result;
        }
        public async Task<PagedList<Appointment>> GetBusinessPagedAppointmentListAsync(Guid businessId, BusinessAppointmentQueryParameters parameters)
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
                collection = collection.Where(a => (a.Customer.CustomerInfo.FirstName + " " + a.Customer.CustomerInfo.LastName).ToLower().Contains(searchQuery.ToLower())
                || (a.Customer.CustomerInfo.LastName + " " + a.Customer.CustomerInfo.FirstName).ToLower().Contains(searchQuery.ToLower())
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
        public async Task<PagedList<CustomerListView>> GetBusinessCustomerListAsync(Guid businessId, BusinessCustomerQueryParameters parameters)
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
                        Banned = c.BanList.Contains(new BusinessCustomerBan { BusinessId = businessId, CustomerId = c.Id }),
                    });
            var collection2 = _context.Customers.Select(c => new CustomerListView
            {
                Customer = c,
                AppointmentCount = c.Appointments.Count,
                Banned = c.BanList.Contains(new BusinessCustomerBan { BusinessId = businessId, CustomerId = c.Id }),
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
                var result = await PagedList<CustomerListView>.CreateAsync(collection, parameters.PageNumber, parameters.PageSize);
                var searchQuery = parameters.CustomerFlair.Trim();
                var resultFiltered = result.Where((a, b) => (a.Customer.CustomerInfo.FirstName + " " + a.Customer.CustomerInfo.LastName).ToLower().Contains(searchQuery.ToLower())
                || (a.Customer.CustomerInfo.LastName + " " + a.Customer.CustomerInfo.FirstName).ToLower().Contains(searchQuery.ToLower())
                || a.Customer.CustomerInfo.Phone.Contains(searchQuery)).ToList();
                var resultFilteredPaged = PagedList<CustomerListView>.CreateFromEnumerable(resultFiltered, parameters.PageNumber, parameters.PageSize);
                return resultFilteredPaged;
            }
            return await PagedList<CustomerListView>.CreateAsync(collection, parameters.PageNumber, parameters.PageSize);
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
    }
}
