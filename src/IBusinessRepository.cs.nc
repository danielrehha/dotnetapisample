using AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence
{
    public interface IBusinessRepository : IAsyncRepository<Domain.Entities.Business>
    {
        Task<Domain.Entities.Business> GetByFirebaseUidAsync(string firebaseUid);
        Task<Domain.Entities.Business> CreateBusinessAsync(string firebaseUid, BusinessInfo businessInfo);
        Task<bool> DoesBusinessExistByFirebaseUidAsync(string firebaseUid);
        Task<BusinessInfo> UpdateInfoAsync(BusinessInfo businessInfo);
        Task<BusinessAvatarImage> UploadAvatarImageAsync(Guid businessId, Guid fileGuid, string fileUrl);
        Task<string> DeleteAvatarImageAsync(Guid businessId);
        Task<List<BusinessPortfolioImage>> GetPortfolioListAsync(Guid businessId);
        Task<BusinessPortfolioImage> UploadPortfolioImageAsync(Guid businessId, Guid fileGuid, string fileUrl);
        Task<PagedList<CustomerListView>> GetBusinessCustomerListAsync(Guid businessId, BusinessCustomerQueryParameters parameters);
        Task<string> DeletePortfolioImageAsync(Guid fileId);
        Task<List<Business>> GetFeaturedBusinessListAsync();
        Task<List<Service>> GetServicesAsync(Guid businessId);
        Task<Service> CreateServiceAsync(Service service);
        Task<Service> UpdateServiceAsync(Service service);
        Task<List<Employee>> GetScheduleAsync(Guid businessId);
        Task DeleteServiceAsync(Guid serviceId);
        Task<List<Employee>> GetEmployeeListAsync(Guid businessId);
        Task<List<Employee>> GetEmployeeScheduleListAsync(Guid businessId);
        Task<List<Appointment>> GetBusinessAppointmentListAsync(Guid businessId, AppointmentStatus status);
        Task<PagedList<Appointment>> GetBusinessPagedAppointmentListAsync(Guid businessId, BusinessAppointmentQueryParameters parameters);
        Task<BusinessSettings> UpdateBusinessSettingsAsync(Guid businessId, BusinessSettings settings);
        Task<string> GetBusinessLanguageIso639CodeAsync(Guid businessId);
    }
}
