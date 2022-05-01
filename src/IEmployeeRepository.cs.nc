using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence
{
    public interface IEmployeeRepository : IAsyncRepository<Employee>
    {
        Task<List<AvailableTimeslot>> AvailableTimeslotListAsync(Guid employeeId);
        Task<List<Appointment>> BookedTimeslotListAsync(Guid employeeId);
        Task<EmployeeInfo> UpdateEmployeeInfoAsync(EmployeeInfo info);
        Task<Employee> CreateEmployeeAsync(Employee employee);
        Task<bool> IsAvailableTimeslotClashingAsync(AvailableTimeslot timeslot);
        Task<Employee> GetEmployeeIncludeDataAsync(Guid employeeId);
        Task<EmployeeSchedule> GetScheduleAsync(Guid employeeId);
        Task<EmployeeAvatarImage> UploadAvatarImageAsync(Guid employeeId, Guid fileGuid, string fileUrl);
        Task<string> DeleteAvatarImageAsync(Guid employeeId);
        Task<List<EmployeePortfolioImage>> GetEmployeePortfolioListAsync(Guid employeeId);
        Task<EmployeePortfolioImage> UploadPortfolioImageAsync(Guid employeeId, Guid fileGuid, string fileUrl);
        Task<List<Employee>> GetFeaturedEmployeeListAsync();
        Task<string> DeletePortfolioImageAsync(Guid fileId);
        Task<List<Service>> GetEmployeeServiceListAsync(Guid employeeId);
        Task<List<DateTime>> GetServiceStartTimeListAsync(Guid employeeId, Guid serviceId);
        Task<List<DateTime>> GetServiceStartTimeListAsyncV2(Guid employeeId, Guid serviceId);
        Task<Guid> GetBusinessIdAsync(Guid employeeId);
        Task<List<WorkDay>> UpdateScheduleAsync(Guid employeeId, List<WorkDay> workDayList);
        Task<EmployeeScheduleSettings> UpdateScheduleSettingsAsync(Guid employeeId, EmployeeScheduleSettings scheduleSettings);
    }
}
