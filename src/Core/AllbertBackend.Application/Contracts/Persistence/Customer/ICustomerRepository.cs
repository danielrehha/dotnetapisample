using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Contracts.Persistence.Customer
{
    public interface ICustomerRepository : IAsyncRepository<Domain.Entities.Customer>
    {
        Task<CustomerInfo> UpdateCustomerInfoAsync(Guid customerId, CustomerInfo info);
        Task<CustomerInfo> GetCustomerInfoAsync(Guid customerId);
        Task<Domain.Entities.Customer> GetByFirebaseUidAsync(string firebaseUid);
        Task<bool> DoesExistByFirebaseUidAsync(string firebaseUid);
        Task<List<CustomerEmployeeFavorite>> GetCustomerFavoriteEmployeeListAsync(Guid customerId);
        Task<List<CustomerBusinessFavorite>> GetCustomerFavoriteBusinessListAsync(Guid customerId);
        Task CreateCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType);
        Task DeleteCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType);
        Task<bool> DoesCustomerFavoriteExistAsync(Guid customerId, Guid entityId, string entityType);
        Task<int> GetCustomerTotalAppointmentCountAsync(Guid customerId, int? status);
        Task<double> GetCustomerAppointmentCompletionIndex(Guid customerId);
        Task<List<Domain.Entities.Appointment>> GetCustomerAppointmentListAsync(Guid customerId, string status);
        Task<List<Guid>> GetCustomerFavoriteGuidListAsync(Guid customerId);
        Task<CustomerSearchResultDto> GetCustomerSearchResultAsync(CustomerSearchDto searchDto);
        Task<CustomerAvatarImage> GetCustomerAvatarAsync(Guid customerId);
        Task<Domain.Entities.Customer> GetCustomerDetailsAsync(Guid customerId);
        Task<List<Domain.Entities.Customer>> GetSearchCustomerListAsync(string customerFlair);
        Task CreateCustomerRatingAsync(CustomerReview customerReview);
    }
}
