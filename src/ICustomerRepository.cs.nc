using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence
{
    public interface ICustomerRepository : IAsyncRepository<Customer>
    {
        Task<CustomerInfo> UpdateCustomerInfoAsync(Guid customerId, CustomerInfo info);
        Task<CustomerInfo> GetCustomerInfoAsync(Guid customerId);
        Task<Customer> GetByFirebaseUidAsync(string firebaseUid);
        Task<bool> DoesExistByFirebaseUidAsync(string firebaseUid);
        Task<List<CustomerEmployeeFavorite>> GetCustomerFavoriteEmployeeListAsync(Guid customerId);
        Task<List<CustomerBusinessFavorite>> GetCustomerFavoriteBusinessListAsync(Guid customerId);
        Task CreateCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType);
        Task DeleteCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType);
        Task<bool> DoesCustomerFavoriteExistAsync(Guid customerId, Guid entityId, string entityType);
        Task<int> GetCustomerTotalAppointmentCountAsync(Guid customerId, int? status);
        Task<double> GetCustomerAppointmentCompletionIndex(Guid customerId);
        Task<List<Appointment>> GetCustomerAppointmentListAsync(Guid customerId, string status);
        Task<List<Guid>> GetCustomerFavoriteGuidListAsync(Guid customerId);
        Task<CustomerSearchResultDto> GetCustomerSearchResultAsync(CustomerSearchDto searchDto);
        Task<CustomerAvatarImage> GetCustomerAvatarAsync(Guid customerId);
        Task<Customer> GetCustomerDetailsAsync(Guid customerId);
    }
}
