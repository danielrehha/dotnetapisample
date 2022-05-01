using System;
using System.Threading.Tasks;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Application.Contracts.Persistence.Shared
{
    public interface IEventRepository : IAsyncRepository<ApplicationEvent>
    {
        Task<PagedList<NotificationDto>> GetBusinessNotificationListAsync(Guid businessId,
            BusinessNotificationQueryParameters parameters);
    }
}