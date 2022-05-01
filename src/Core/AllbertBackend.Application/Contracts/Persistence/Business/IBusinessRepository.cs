using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Contracts.Persistence.Business
{
    public interface IBusinessRepository : IAsyncRepository<AllbertBackend.Domain.Entities.Business>
    {
        Task<AllbertBackend.Domain.Entities.Business> GetByFirebaseUidAsync(string firebaseUid);
        Task<bool> DoesBusinessExistByFirebaseUidAsync(string firebaseUid);
        Task<BusinessAvatarImage> UploadAvatarImageAsync(Guid businessId, Guid fileGuid, string fileUrl);
        Task<string> DeleteAvatarImageAsync(Guid businessId);
        Task<List<BusinessPortfolioImage>> GetPortfolioListAsync(Guid businessId);
        Task<BusinessPortfolioImage> UploadPortfolioImageAsync(Guid businessId, Guid fileGuid, string fileUrl);
        Task<PagedList<CustomerListView>> GetBusinessCustomerListAsync(Guid businessId, BusinessCustomerQueryParameters parameters);
        Task<string> DeletePortfolioImageAsync(Guid fileId);
        Task<List<Domain.Entities.Business>> GetFeaturedBusinessListAsync();
        Task<List<Service>> GetServicesAsync(Guid businessId);
        Task<Service> CreateServiceAsync(Service service);
        Task<Service> UpdateServiceAsync(Service service);
        Task<List<Domain.Entities.Employee>> GetScheduleAsync(Guid businessId);
        Task DeleteServiceAsync(Guid serviceId);
        Task<List<Domain.Entities.Employee>> GetEmployeeListAsync(Guid businessId);
        Task<List<Domain.Entities.Employee>> GetEmployeeScheduleListAsync(EmployeeScheduleQueryDto queryDto);

        Task<List<Domain.Entities.Appointment>> GetBusinessAppointmentListAsync(Guid businessId, AppointmentStatus status);
        Task<PagedList<Domain.Entities.Appointment>> GetBusinessPagedAppointmentListAsync(Guid businessId, BusinessAppointmentQueryParameters parameters);
        Task<BusinessSettings> UpdateBusinessSettingsAsync(Guid businessId, BusinessSettings settings);
        Task<string> GetBusinessLanguageIso639CodeAsync(Guid businessId);
        Task BanCustomerAsync(Guid businessId, Guid customerId);
        Task UnBanCustomerAsync(Guid businessId, Guid customerId);
        Task<BusinessDetails> UpdateBusinessDetailsAsync(Guid businessId, BusinessDetails details);
        Task<BusinessAddress> UpdateBusinessAddressAsync(Guid businessId, BusinessAddress address);
        Task<BusinessContact> UpdateBusinessContactAsync(Guid businessId, BusinessContact contact);
        Task<List<EmployeeNameListDto>> GetEmployeeNameListAsync(Guid requestBusinessId);
    }
}
