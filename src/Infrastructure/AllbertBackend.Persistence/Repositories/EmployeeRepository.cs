using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Infrastructure.Persistence;

namespace AllbertBackend.Persistence.Repositories
{
    public class EmployeeRepository : BaseRepository<Employee>, IEmployeeRepository
    {
        private readonly AllbertBackendDBContext _context;

        public EmployeeRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }

        public override async Task<Employee> DeleteAsync(Guid id)
        {
            var entity = await _context.Employees.FindAsync(id);

            if (entity == null)
            {
                throw new ArgumentNullException($"{id}", "Employee was not found.");
            }

            entity.Deleted = true;
            _context.Employees.Update(entity);

            await _context.SaveChangesAsync();

            return entity;
        }

        public async Task<List<Appointment>> BookedTimeslotListAsync(Guid employeeId)
        {
            var result = await _context.Appointments.Where(a => a.EmployeeId == employeeId).ToListAsync();
            return result;
        }

        public Task<Employee> CreateEmployeeAsync(Employee employee)
        {
            throw new NotImplementedException();
        }

        public async Task<Employee> GetEmployeeIncludeDataAsync(Guid employeeId)
        {
            var result = await _context.Employees
                .Include(e => e.Avatar)
                .Include(e => e.Appointments)
                .Include(e => e.EmployeeInfo)
                .FirstOrDefaultAsync(e => e.Id == employeeId);
            return result;
        }

        public async Task<EmployeeSchedule> GetScheduleAsync(Guid employeeId)
        {
            var schedule = new EmployeeSchedule
            {
                Appointments = await _context.Appointments.Where(b => b.EmployeeId == employeeId).ToListAsync(),
            };

            return schedule;
        }

        public async Task<EmployeeInfo> UpdateEmployeeInfoAsync(EmployeeInfo info)
        {
            var result = await _context.EmployeeInfos.AsNoTracking()
                .FirstOrDefaultAsync(i => i.EmployeeId == info.EmployeeId);
            result = info;
            var oldServiceList = await _context.EmployeeServices.Where(s => s.EmployeeId == info.EmployeeId)
                .AsNoTracking().ToListAsync();
            foreach (var oldService in oldServiceList)
            {
                if (!info.Services.Contains(oldService))
                {
                    _context.Entry(oldService).State = EntityState.Deleted;
                    _context.EmployeeServices.Remove(oldService);
                }
            }

            if (info.Services != null && info.Services.Count > 0)
            {
                foreach (var service in info.Services)
                {
                    if (!oldServiceList.Contains(service))
                    {
                        service.CreatedOn = DateTime.UtcNow;
                        await _context.EmployeeServices.AddAsync(service);
                    }
                }
            }

            _context.EmployeeInfos.Update(result);
            await _context.SaveChangesAsync();
            return result;
        }

        public async Task<EmployeeAvatarImage> UploadAvatarImageAsync(Guid employeeId, Guid fileGuid, string fileUrl)
        {
            var entity = await _context.EmployeeAvatarImages.AsNoTracking()
                .FirstOrDefaultAsync(i => i.EmployeeId == employeeId);
            if (entity == null)
            {
                var image = new EmployeeAvatarImage
                {
                    Id = fileGuid,
                    EmployeeId = employeeId,
                    PathUrl = fileUrl,
                };
                await _context.EmployeeAvatarImages.AddAsync(image);
                await _context.SaveChangesAsync();
                return image;
            }

            entity.PathUrl = fileUrl;

            _context.EmployeeAvatarImages.Update(entity);
            await _context.SaveChangesAsync();

            return entity;
        }

        public async Task<string> DeleteAvatarImageAsync(Guid employeeId)
        {
            var entity = await _context.EmployeeAvatarImages.AsNoTracking()
                .FirstOrDefaultAsync(i => i.EmployeeId == employeeId);
            if (entity == null)
            {
                return null;
            }

            _context.EmployeeAvatarImages.Remove(entity);
            await _context.SaveChangesAsync();
            return entity.PathUrl;
        }

        public async Task<EmployeePortfolioImage> UploadPortfolioImageAsync(Guid employeeId, Guid fileGuid,
            string fileUrl)
        {
            var image = new EmployeePortfolioImage
            {
                Id = fileGuid,
                EmployeeId = employeeId,
                PathUrl = fileUrl,
            };
            await _context.EmployeePortfolioImages.AddAsync(image);
            await _context.SaveChangesAsync();
            return image;
        }

        public async Task<string> DeletePortfolioImageAsync(Guid fileId)
        {
            var entity = await _context.EmployeePortfolioImages.FirstOrDefaultAsync(i => i.Id == fileId);
            if (entity == null)
            {
                return null;
            }

            _context.EmployeePortfolioImages.Remove(entity);
            await _context.SaveChangesAsync();
            return entity.PathUrl;
        }

        public async Task<List<EmployeePortfolioImage>> GetEmployeePortfolioListAsync(Guid employeeId)
        {
            var result = await _context.EmployeePortfolioImages.Where(i => i.EmployeeId == employeeId).ToListAsync();
            return result;
        }

        public async Task<List<Service>> GetEmployeeServiceListAsync(Guid employeeId)
        {
            var result = await _context.EmployeeServices
                .Where(es => es.EmployeeId == employeeId)
                .Include(es => es.Service)
                .ToListAsync();

            var services = new List<Service>();

            foreach (var service in result)
            {
                services.Add(service.Service);
            }

            return services;
        }

        public async Task<List<DateTime>> GetServiceStartTimeListAsyncV2(Guid employeeId, Guid serviceId)
        {
            var workDays = await _context.WorkDays
                .Where(a => a.EmployeeId == employeeId)
                .Include(w => w.PauseList)
                .ToListAsync();
            var settings =
                await _context.EmployeeSettings.FirstOrDefaultAsync(s => s.EmployeeId == employeeId);
            var appointments = new List<Appointment>();
            var service = await _context.Services.FindAsync(serviceId);
            var startTimes = new List<DateTime>();

            var debugApts = await _context.Appointments.ToListAsync();

            foreach (var wd in workDays)
            {
                var difference = wd.EndTime.Subtract(wd.StartTime);

                for (var i = 0; i < difference.TotalMinutes; i += settings.AllowedBookingFrequencyInMinutes)
                {
                    var startTime = wd.StartTime.AddMinutes(i);
                    if (startTime <= wd.EndTime.Subtract(TimeSpan.FromMinutes(service.Duration)))
                    {
                        startTimes.Add(startTime);
                    }
                }

                var wdAppts = await _context.Appointments
                    .Where(
                        a => a.EmployeeId == employeeId &&
                             a.StartDate.Year == wd.Date.Year &&
                             a.StartDate.Month == wd.Date.Month &&
                             a.StartDate.Day == wd.Date.Day &&
                             a.Status == 0
                    )
                    .ToListAsync();
                appointments.AddRange(wdAppts);
            }

            List<DateTime> startTimesToRemove = new();

            foreach (var start in startTimes)
            {
                var end = start.AddMinutes(service.Duration);
                bool isClashing = appointments
                    .Where(a =>
                        (start > a.StartDate && start < a.EndDate) ||
                        (end > a.StartDate && end < a.EndDate) ||
                        start == a.StartDate ||
                        end == a.EndDate
                    ).ToList().Count > 0;
                if (isClashing)
                {
                    startTimesToRemove.Add(start);
                }
            }

            foreach (var wd in workDays)
            {
                foreach (var start in startTimes)
                {
                    var end = start.AddMinutes(service.Duration);
                    bool isClashing = wd.PauseList.Where(a =>
                        (start > a.StartTime && start < a.EndTime) ||
                        (end > a.StartTime && end < a.EndTime) ||
                        start == a.StartTime ||
                        end == a.EndTime
                    ).ToList().Count > 0;
                    if (isClashing)
                    {
                        startTimesToRemove.Add(start);
                    }
                }
            }


            foreach (var remove in startTimesToRemove)
            {
                startTimes.Remove(remove);
            }

            return startTimes;
        }

        public async Task<List<Employee>> GetFeaturedEmployeeListAsync()
        {
            var result = await _context.Employees
                .Include(e => e.Business).ThenInclude(b => b.Details)
                .Include(e => e.Business).ThenInclude(b => b.Address)
                .Include(e => e.Business).ThenInclude(b => b.Contact)
                .Include(e => e.Avatar)
                .Include(e => e.EmployeeInfo)
                .Take(20).ToListAsync();

            return result;
        }

        public async Task<Guid> GetBusinessIdByEmployeeIdAsync(Guid employeeId)
        {
            var employee = await _context.Employees.FirstOrDefaultAsync(e => e.Id == employeeId);
            return employee.BusinessId;
        }

        public async Task<List<WorkDay>> UpdateScheduleAsync(Guid employeeId, List<WorkDay> workDayList)
        {
            var currentWorkDayList = await _context.WorkDays
                .Where(w => w.EmployeeId == employeeId)
                .Include(w => w.PauseList)
                .ToListAsync();

            List<WorkPause> workPauseList = new();
            List<WorkPause> currentWorkPauseList = new();

            if (currentWorkDayList.Count < 1)
            {
                await _context.WorkDays.AddRangeAsync(workDayList);
                await _context.SaveChangesAsync();
                return workDayList;
            }

            foreach (var wd in workDayList)
            {
                if (currentWorkDayList.Where((e) => e.Date == wd.Date).ToList().Count == 0)
                {
                    await _context.WorkDays.AddAsync(wd);
                }
                else
                {
                    var wdFromContext = await _context.WorkDays.FirstOrDefaultAsync(w => w.Date == wd.Date);
                    if (wdFromContext.StartTime != wd.StartTime || wdFromContext.EndTime != wd.EndTime)
                    {
                        wdFromContext.StartTime = wd.StartTime;
                        wdFromContext.EndTime = wd.EndTime;
                        _context.Entry(wdFromContext).State = EntityState.Modified;
                        _context.WorkDays.Update(wdFromContext);
                    }
                }

                workPauseList.AddRange(wd.PauseList);
            }

            foreach (var wd in currentWorkDayList)
            {
                if (workDayList.Where((e) => e.Date == wd.Date).ToList().Count == 0)
                {
                    _context.Entry(wd).State = EntityState.Deleted;
                    _context.WorkDays.Remove(wd);
                }

                currentWorkPauseList.AddRange(wd.PauseList);
            }

            foreach (var pause in workPauseList)
            {
                if (currentWorkPauseList.Where((e) => e.Date == pause.Date && e.Index == pause.Index).ToList().Count ==
                    0)
                {
                    await _context.WorkPauses.AddAsync(pause);
                }
                else
                {
                    var pauseFromContext =
                        await _context.WorkPauses.FirstOrDefaultAsync(p =>
                            p.Date == pause.Date && p.Index == pause.Index);
                    if (pauseFromContext.StartTime != pause.StartTime || pauseFromContext.EndTime != pause.EndTime)
                    {
                        pauseFromContext.StartTime = pause.StartTime;
                        pauseFromContext.EndTime = pause.EndTime;
                        _context.Entry(pauseFromContext).State = EntityState.Modified;
                        _context.WorkPauses.Update(pauseFromContext);
                    }
                }
            }

            foreach (var pause in currentWorkPauseList)
            {
                if (workPauseList.Where((e) => e.Date == pause.Date && e.Index == pause.Index).ToList().Count == 0)
                {
                    _context.Entry(pause).State = EntityState.Deleted;

                    _context.WorkPauses.Remove(pause);
                }
            }

            await _context.SaveChangesAsync();

            var result = await _context.WorkDays
                .Where(e => e.EmployeeId == employeeId)
                .Include(e => e.PauseList)
                .ToListAsync();

            return result;
        }

        public async Task<EmployeeSettings> UpdateSettingsAsync(Guid employeeId,
            EmployeeSettings settings)
        {
            var schedule = await _context.EmployeeSettings.FirstOrDefaultAsync(s => s.EmployeeId == employeeId);

            if (schedule == null)
            {
                settings.EmployeeId = employeeId;
                await _context.EmployeeSettings.AddAsync(settings);
                await _context.SaveChangesAsync();
                return settings;
            }

            schedule.AllowedBookingFrequencyInMinutes = settings.AllowedBookingFrequencyInMinutes;
            schedule.AllowedAppointmentDeletionDeadlineInHours =
                settings.AllowedAppointmentDeletionDeadlineInHours;
            schedule.AllowedAppointmentCreationDeadlineInHours =
                settings.AllowedAppointmentCreationDeadlineInHours;
            schedule.MinAllowedCustomerBookingIndex = settings.MinAllowedCustomerBookingIndex;

            _context.Entry(schedule).State = EntityState.Modified;
            _context.EmployeeSettings.Update(schedule);

            await _context.SaveChangesAsync();

            return schedule;
        }

        public async Task<EmployeeSettings> GetEmployeeSettingsAsync(Guid employeeId)
        {
            var result = await _context.EmployeeSettings.FindAsync(employeeId);
            if (result == null)
            {
                throw new NullReferenceException();
            }

            return result;
        }

        public async Task UpdateStatusAsync(Guid entityId, EntityStatus entityStatus)
        {
            var entity = await _context.Employees.FindAsync(entityId);
            if (entity == null)
            {
                throw new ArgumentNullException(entityId.ToString());
            }

            if (entityStatus == EntityStatus.Active)
            {
                entity.Enabled = true;
            }

            if (entityStatus == EntityStatus.Paused)
            {
                entity.Enabled = false;
            }

            _context.Entry(entity).State = EntityState.Detached;
            _context.Update(entity);
            await _context.SaveChangesAsync();
        }

        public async Task CreateWorkBlockAsync(Guid requestEmployeeId, EmployeeWorkBlock requestWorkBlock)
        {
            await _context.EmployeeWorkBlocks.AddAsync(requestWorkBlock);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateWorkBlockAsync(Guid requestEmployeeId, EmployeeWorkBlock requestWorkBlock)
        {
            var entity = await _context.EmployeeWorkBlocks.FindAsync(requestWorkBlock.Id);
            if (entity == null)
            {
                throw new ArgumentNullException(entity.Id.ToString());
            }

            _context.Entry(entity).State = EntityState.Detached;
            _context.EmployeeWorkBlocks.Update(requestWorkBlock);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteWorkBlockAsync(Guid requestEmployeeId, Guid workBlockId)
        {
            var entity = await _context.EmployeeWorkBlocks.FindAsync(workBlockId);
            if (entity == null)
            {
                throw new ArgumentNullException(entity.Id.ToString());
            }

            _context.EmployeeWorkBlocks.Remove(entity);
            await _context.SaveChangesAsync();
        }

        public async Task<PagedList<CustomerReview>> GetCustomerReviewListAsync(Guid employeeId,
            CustomerReviewQueryParameters requestParameters)
        {
            var collection = _context.CustomerReviews
                .Where(e => e.EmployeeId == employeeId && e.Customer.Deleted == false);

            if (requestParameters.From != null)
            {
                collection = collection.Where(e => e.CreatedOn >= requestParameters.From);
            }

            if (requestParameters.Until != null)
            {
                collection = collection.Where(e => e.CreatedOn <= requestParameters.Until);
            }

            if (requestParameters.EmployeeId != null)
            {
                collection = collection.Where(e => e.EmployeeId == requestParameters.EmployeeId);
            }

            if (requestParameters.OrderBy == "ratingAscending")
            {
                collection = collection.OrderBy(e => e.Rating).ThenByDescending(e => e.CreatedOn);
            }

            if (requestParameters.OrderBy == "ratingDescending")
            {
                collection = collection.OrderByDescending(e => e.Rating).ThenByDescending(e => e.CreatedOn);
            }

            if (requestParameters.OrderBy == "dateAscending")
            {
                collection = collection.OrderBy(e => e.CreatedOn);
            }

            if (requestParameters.OrderBy == "dateDescending")
            {
                collection = collection.OrderByDescending(e => e.CreatedOn);
            }

            collection = collection
                .Include(e => e.Customer).ThenInclude(e => e.CustomerInfo);

            return await PagedList<CustomerReview>.CreateAsync(collection, requestParameters.PageNumber,
                requestParameters.PageSize);
        }
    }
}