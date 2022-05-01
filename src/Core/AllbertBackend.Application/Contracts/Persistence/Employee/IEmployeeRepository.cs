using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeeSettings;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Contracts.Persistence.Employee
{
    public interface IEmployeeRepository : IAsyncRepository<Domain.Entities.Employee>
    {
        Task<List<Domain.Entities.Appointment>> BookedTimeslotListAsync(Guid employeeId);
        Task<EmployeeInfo> UpdateEmployeeInfoAsync(EmployeeInfo info);
        Task<Domain.Entities.Employee> CreateEmployeeAsync(Domain.Entities.Employee employee);
        Task<Domain.Entities.Employee> GetEmployeeIncludeDataAsync(Guid employeeId);
        Task<EmployeeSchedule> GetScheduleAsync(Guid employeeId);
        Task<EmployeeAvatarImage> UploadAvatarImageAsync(Guid employeeId, Guid fileGuid, string fileUrl);
        Task<string> DeleteAvatarImageAsync(Guid employeeId);
        Task<List<EmployeePortfolioImage>> GetEmployeePortfolioListAsync(Guid employeeId);
        Task<EmployeePortfolioImage> UploadPortfolioImageAsync(Guid employeeId, Guid fileGuid, string fileUrl);
        Task<List<Domain.Entities.Employee>> GetFeaturedEmployeeListAsync();
        Task<string> DeletePortfolioImageAsync(Guid fileId);
        Task<List<Service>> GetEmployeeServiceListAsync(Guid employeeId);
        Task<List<DateTime>> GetServiceStartTimeListAsyncV2(Guid employeeId, Guid serviceId);
        Task<Guid> GetBusinessIdByEmployeeIdAsync(Guid employeeId);
        Task<List<WorkDay>> UpdateScheduleAsync(Guid employeeId, List<WorkDay> workDayList);
        Task<EmployeeSettings> UpdateSettingsAsync(Guid employeeId, EmployeeSettings settings);
        Task<EmployeeSettings> GetEmployeeSettingsAsync(Guid employeeId);

        Task UpdateStatusAsync(Guid entityId, EntityStatus entityStatus);
        Task CreateWorkBlockAsync(Guid requestEmployeeId, EmployeeWorkBlock requestWorkBlock);
        Task UpdateWorkBlockAsync(Guid requestEmployeeId, EmployeeWorkBlock requestWorkBlock);
        Task DeleteWorkBlockAsync(Guid requestEmployeeId, Guid workBlockId);
        Task<PagedList<CustomerReview>> GetCustomerReviewListAsync(Guid employeeId, CustomerReviewQueryParameters requestParameters);
    }
}
