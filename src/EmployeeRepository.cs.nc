using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Persistence.Repositories.Utils;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories
{
    public class EmployeeRepository : BaseRepository<Employee>, IEmployeeRepository
    {
        private readonly AllbertBackendDBContext _context;
        public EmployeeRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }
        public async Task<List<AvailableTimeslot>> AvailableTimeslotListAsync(Guid employeeId)
        {
            var result = await _context.AvailableTimeslots.Where(a => a.EmployeeId == employeeId).ToListAsync();
            return result;
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
                .Include(e => e.AvailableTimeslots)
                .Include(e => e.Appointments)
                .Include(e => e.EmployeeInfo)
                .FirstOrDefaultAsync(e => e.Id == employeeId);
            return result;
        }
        public async Task<EmployeeSchedule> GetScheduleAsync(Guid employeeId)
        {
            var schedule = new EmployeeSchedule
            {
                AvailableTimeslots =
                    await _context.AvailableTimeslots.Where(a => a.EmployeeId == employeeId).ToListAsync(),
                BookedTimeslots = await _context.Appointments.Where(b => b.EmployeeId == employeeId).ToListAsync(),
            };
            return schedule;
        }
        public Task<bool> IsAvailableTimeslotClashingAsync(AvailableTimeslot timeslot)
        {
            throw new NotImplementedException();
        }
        public async Task<EmployeeInfo> UpdateEmployeeInfoAsync(EmployeeInfo info)
        {
            var result = await _context.EmployeeInfos.AsNoTracking()
                .FirstOrDefaultAsync(i => i.EmployeeId == info.EmployeeId);
            result = info;
            result.ModifiedOn = DateTime.UtcNow;
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
                        service.ModifiedOn = DateTime.UtcNow;
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
                    ModifiedOn = DateTime.UtcNow,
                };
                await _context.EmployeeAvatarImages.AddAsync(image);
                await _context.SaveChangesAsync();
                return image;
            }
            entity.PathUrl = fileUrl;
            entity.ModifiedOn = DateTime.UtcNow;
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
                ModifiedOn = DateTime.UtcNow,
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
        public async Task<List<DateTime>> GetServiceStartTimeListAsync(Guid employeeId, Guid serviceId)
        {
            var availableTimeslots =
                await _context.AvailableTimeslots.Where(a => a.EmployeeId == employeeId).ToListAsync();
            var service = await _context.Services.FindAsync(serviceId);
            var startTimes = new List<DateTime>();
            foreach (var timeslot in availableTimeslots)
            {
                var difference = timeslot.EndDate.Subtract(timeslot.StartDate);
                for (var i = 0; i < difference.TotalMinutes; i += service.Duration + service.PauseAfterInMinutes)
                {
                    var startTime = timeslot.StartDate.AddMinutes(i);
                    if (startTime
                        <= timeslot.EndDate.Subtract(TimeSpan.FromMinutes(service.Duration)))
                    {
                        if (startTime.Subtract(DateTime.UtcNow).TotalMinutes >= service.Offset)
                        {
                            startTimes.Add(startTime);
                        }
                    }
                }
            }
            return startTimes;
        }
        public async Task<List<DateTime>> GetServiceStartTimeListAsyncV2(Guid employeeId, Guid serviceId)
        {
            var workDays = await _context.WorkDays
                .Where(a => a.EmployeeId == employeeId)
                .Include(w => w.PauseList)
                .ToListAsync();
            var scheduleSettings =
                await _context.EmployeeScheduleSettings.FirstOrDefaultAsync(s => s.EmployeeId == employeeId);
            var appointments = new List<Appointment>();
            var service = await _context.Services.FindAsync(serviceId);
            var startTimes = new List<DateTime>();
            var debugApts = await _context.Appointments.ToListAsync();
            foreach (var wd in workDays)
            {
                var difference = wd.EndTime.Subtract(wd.StartTime);
                for (var i = 0; i < difference.TotalMinutes; i += scheduleSettings.AllowedBookingFrequencyInMinutes)
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
                .Include(e => e.Business).ThenInclude(b => b.BusinessInfo)
                .Include(e => e.Avatar)
                .Include(e => e.EmployeeInfo)
                .Take(20).ToListAsync();
            result[0].BusinessInfo = await _context.BusinessInfos.FindAsync(result[0].BusinessId);
            return result;
        }
        public async Task<Guid> GetBusinessIdAsync(Guid employeeId)
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
        public async Task<EmployeeScheduleSettings> UpdateScheduleSettingsAsync(Guid employeeId,
            EmployeeScheduleSettings scheduleSettings)
        {
            var schedule = await _context.EmployeeScheduleSettings.FirstOrDefaultAsync(s => s.EmployeeId == employeeId);
            if (schedule == null)
            {
                scheduleSettings.EmployeeId = employeeId;
                await _context.EmployeeScheduleSettings.AddAsync(scheduleSettings);
                await _context.SaveChangesAsync();
                return scheduleSettings;
            }
            schedule.AllowedBookingFrequencyInMinutes = scheduleSettings.AllowedBookingFrequencyInMinutes;
            schedule.AllowedAppointmentDeletionDeadlineInHours =
                scheduleSettings.AllowedAppointmentDeletionDeadlineInHours;
            _context.Entry(schedule).State = EntityState.Modified;
            _context.EmployeeScheduleSettings.Update(schedule);
            await _context.SaveChangesAsync();
            return schedule;
        }
    }
}
