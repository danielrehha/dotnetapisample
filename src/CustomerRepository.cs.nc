using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Algorithms;
using AllbertBackend.Domain.Common;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Domain.Extensions;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories
{
    public class CustomerRepository : BaseRepository<Customer>, ICustomerRepository
    {
        private readonly AllbertBackendDBContext _context;
        public CustomerRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }
        public async Task CreateCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType)
        {
            if (entityType == "business")
            {
                var entity = new CustomerBusinessFavorite
                {
                    Id = Guid.NewGuid(),
                    CustomerId = customerId,
                    EntityId = entityId,
                };
                await _context.CustomerBusinessFavorites.AddAsync(entity);
            }
            if (entityType == "employee")
            {
                var entity = new CustomerEmployeeFavorite
                {
                    Id = Guid.NewGuid(),
                    CustomerId = customerId,
                    EntityId = entityId,
                };
                await _context.CustomerEmployeeFavorites.AddAsync(entity);
            }
            await _context.SaveChangesAsync();
        }
        public async Task DeleteCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType)
        {
            if (entityType == "business")
            {
                var entity = await _context.CustomerBusinessFavorites.FirstOrDefaultAsync(f => f.EntityId == entityId && f.CustomerId == customerId);
                _context.CustomerBusinessFavorites.Remove(entity);
            }
            if (entityType == "employee")
            {
                var entity = await _context.CustomerEmployeeFavorites.FirstOrDefaultAsync(f => f.EntityId == entityId && f.CustomerId == customerId);
                _context.CustomerEmployeeFavorites.Remove(entity);
            }
            await _context.SaveChangesAsync();
        }
        public async Task<bool> DoesCustomerFavoriteExistAsync(Guid customerId, Guid entityId, string entityType)
        {
            if (entityType == "business")
            {
                return await _context.CustomerBusinessFavorites.AnyAsync(f => f.CustomerId == customerId && f.EntityId == entityId);
            }
            else
            {
                return await _context.CustomerEmployeeFavorites.AnyAsync(f => f.CustomerId == customerId && f.EntityId == entityId);
            }
        }
        public async Task<bool> DoesExistByFirebaseUidAsync(string firebaseUid)
        {
            return await _context.Customers.AnyAsync(c => c.FirebaseUid == firebaseUid);
        }
        public async Task<Customer> GetByFirebaseUidAsync(string firebaseUid)
        {
            var result = await _context.Customers.Include(c => c.CustomerInfo).Include(c => c.Avatar).FirstOrDefaultAsync(c => c.FirebaseUid == firebaseUid);
            return result;
        }
        public async Task<List<Appointment>> GetCustomerAppointmentListAsync(Guid customerId, string status)
        {
            if (status == "active")
            {
                var result = await _context.Appointments
                    .Where(a => a.CustomerId == customerId && a.Status == 0)
                    .Include(a => a.Employee).ThenInclude(e => e.EmployeeInfo)
                    .Include(a => a.Employee).ThenInclude(e => e.Avatar)
                    .Include(a => a.Employee).ThenInclude(e => e.Business).ThenInclude(b => b.BusinessInfo)
                    .Include(a => a.Employee).ThenInclude(e => e.ScheduleSettings)
                    .Include(a => a.Service)
                    .ToListAsync();
                return result;
            }
            else
            {
                var result = await _context.Appointments
                    .Where(a => a.CustomerId == customerId && a.Status != 0)
                    .Include(a => a.Employee).ThenInclude(e => e.EmployeeInfo)
                    .Include(a => a.Employee).ThenInclude(e => e.Avatar)
                    .Include(a => a.Employee).ThenInclude(e => e.Business).ThenInclude(b => b.BusinessInfo)
                    .Include(a => a.Employee).ThenInclude(e => e.ScheduleSettings)
                    .Include(a => a.Service)
                    .ToListAsync();
                return result;
            }
        }
        public async Task<List<CustomerBusinessFavorite>> GetCustomerFavoriteBusinessListAsync(Guid customerId)
        {
            var result = await _context.CustomerBusinessFavorites.Where(f => f.CustomerId == customerId)
                .Include(f => f.Entity).ThenInclude(e => e.BusinessInfo)
                .Include(b => b.Entity.Avatar)
                .ToListAsync();
            return result;
        }
        public async Task<List<CustomerEmployeeFavorite>> GetCustomerFavoriteEmployeeListAsync(Guid customerId)
        {
            var result = await _context.CustomerEmployeeFavorites
                .Where(f => f.CustomerId == customerId)
                .Include(f => f.Entity.EmployeeInfo)
                .Include(f => f.Entity.Avatar)
                .ToListAsync();
            List<Business> businesses = new();
            foreach (var employee in result)
            {
                var business = await _context.Businesses
                    .Include(b => b.BusinessInfo)
                    .FirstOrDefaultAsync(b => b.Id == employee.Entity.BusinessId);
                businesses.Add(business);
            }
            foreach (var business in businesses)
            {
                foreach (var employee in result)
                {
                    if (employee.Entity.BusinessId == business.Id)
                    {
                        employee.Entity.Business = business;
                    }
                }
            }
            return result;
        }
        public async Task<List<Guid>> GetCustomerFavoriteGuidListAsync(Guid customerId)
        {
            var businessGuids = await _context.CustomerBusinessFavorites
                .Where(f => f.CustomerId == customerId)
                .Select((e) => e.EntityId)
                .ToListAsync();
            var employeeGuids = await _context.CustomerEmployeeFavorites
                .Where(f => f.CustomerId == customerId)
                .Select((e) => e.EntityId)
                .ToListAsync();
            businessGuids.AddRange(employeeGuids);
            return businessGuids;
        }
        public async Task<CustomerInfo> GetCustomerInfoAsync(Guid customerId)
        {
            return await _context.CustomerInfos.FindAsync(customerId);
        }
        public async Task<CustomerSearchResultDto> GetCustomerSearchResultAsync(CustomerSearchDto searchDto)
        {
            var result = new CustomerSearchResultDto();
            if (searchDto.LocationType == SearchLocationType.DeviceLocation)
            {
                var clientLocation = new GeoLocation(searchDto.Lat, searchDto.Lng);
                var servicesQuery = await _context.Services
                    .AsNoTracking()
                    .ToListAsync();
                var services = servicesQuery.Where(s => StringUtilities.RemoveAccents(s.Name.ToLower()).Contains(StringUtilities.RemoveAccents(searchDto.Keyword.ToLower()))).ToList();
                List<Guid> businessGuids = new();
                List<Business> businesses = new();
                List<Employee> employees = new();
                foreach (var service in services)
                {
                    businessGuids.Add(service.BusinessId);
                }
                foreach (var guid in businessGuids)
                {
                    var business = await _context.Businesses
                        .Include(b => b.BusinessInfo)
                        .Include(b => b.Avatar)
                        .FirstOrDefaultAsync(b => b.Id == guid);
                    businesses.Add(business);
                }
                var nameBasedBusinessListQuery = await _context.Businesses
                    .Include(s => s.BusinessInfo)
                    .Include(s => s.Avatar)
                    .ToListAsync();
                var nameBasedBusinessList = nameBasedBusinessListQuery.Where(b => StringUtilities.RemoveAccents(b.BusinessInfo.Name.ToLower()).Contains(StringUtilities.RemoveAccents(searchDto.Keyword.ToLower()))).ToList();
                businesses.AddRange(nameBasedBusinessList);
                List<Business> businessesToRemove = new();
                foreach (var business in businesses)
                {
                    var businessLocation = new GeoLocation(business.BusinessInfo.LocationLat, business.BusinessInfo.LocationLong);
                    if (GeoCalculator.CalculateDistance(clientLocation, businessLocation) > searchDto.MaxDistanceInKm * 1000)
                    {
                        businessesToRemove.Add(business);
                    }
                }
                foreach (var toRemove in businessesToRemove)
                {
                    businesses.Remove(toRemove);
                }
                foreach (var business in businesses)
                {
                    var employeeBlock = await _context.Employees
                        .Include(e => e.EmployeeInfo)
                        .Include(e => e.Avatar)
                        .Include(e => e.BusinessInfo)
                        .Where(e => e.BusinessId == business.Id)
                        .ToListAsync();
                    employees.AddRange(employeeBlock);
                }
                var nameBasedEmployeeListQuery = await _context.Employees
                    .Include(e => e.EmployeeInfo)
                    .Include(e => e.Avatar)
                    .ToListAsync();
                var nameBasedEmployeeList = nameBasedEmployeeListQuery.Where(e => StringUtilities.RemoveAccents((e.EmployeeInfo.FirstName + " " + e.EmployeeInfo.LastName)).ToLower().Contains(StringUtilities.RemoveAccents(searchDto.Keyword))).ToList();
                List<Employee> employeesToRemove = new();
                foreach (var employee in nameBasedEmployeeList)
                {
                    var employeeBusinessInfo = await _context.BusinessInfos.FirstOrDefaultAsync(b => b.BusinessId == employee.BusinessId);
                    var businessLocation = new GeoLocation(employeeBusinessInfo.LocationLat, employeeBusinessInfo.LocationLong);
                    if (GeoCalculator.CalculateDistance(clientLocation, businessLocation) > searchDto.MaxDistanceInKm * 1000)
                    {
                        employeesToRemove.Add(employee);
                    }
                }
                foreach (var toRemove in employeesToRemove)
                {
                    nameBasedEmployeeList.Remove(toRemove);
                }
                employees.AddRange(nameBasedEmployeeList);
                result.Businesses = businesses;
                result.Employees = employees;
            }
            return result;
        }
        public async Task<int> GetCustomerTotalAppointmentCountAsync(Guid customerId, int? status)
        {
            var collection = _context.Appointments.Where(a => a.CustomerId == customerId);
            if(status != null)
            {
                collection = collection.Where(a => a.Status == status);
            }
            var result = await collection.ToListAsync();
            return result.Count;
        }
        public async Task<CustomerInfo> UpdateCustomerInfoAsync(Guid customerId, CustomerInfo info)
        {
            var entity = await _context.CustomerInfos.AsNoTracking().FirstOrDefaultAsync(c => c.CustomerId == customerId);
            entity = info;
            _context.CustomerInfos.Update(entity);
            await _context.SaveChangesAsync();
            return entity;
        }
        public async Task<double> GetCustomerAppointmentCompletionIndex(Guid customerId)
        {
            var appointments = await _context.Appointments
                .Where(a => a.CustomerId == customerId && (a.Status == 2 || a.Status == 3 || a.Status == 4))
                .ToListAsync();
            var completedAppointments = appointments.Where(a => a.Status == 2).ToList();
            if (appointments.Count < 5)
            {
                return 0;
            }
            double index = Math.Round((double)((double)completedAppointments.Count / (double)appointments.Count * 5),2);
            if(index < 1)
            {
                return 1;
            }
            return index;
        }
        public async Task<CustomerAvatarImage> GetCustomerAvatarAsync(Guid customerId)
        {
            return await _context.CustomerAvatarImages.FirstOrDefaultAsync(a => a.CustomerId == customerId);
        }
        public async Task<Customer> GetCustomerDetailsAsync(Guid customerId)
        {
            var result = await _context.Customers
                .Include(c => c.CustomerInfo)
                .Include(c => c.Avatar)
                .FirstOrDefaultAsync(c => c.Id == customerId);
            return result;
        }
    }
}
