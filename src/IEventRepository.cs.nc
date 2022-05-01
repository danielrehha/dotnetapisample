using AllbertBackend.Application.Features.Business.Queries;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence.Shared
{
    public interface IEventRepository : IAsyncRepository<ApplicationEvent>
    {
        Task<PagedList<NotificationDto>> GetBusinessNotificationListAsync(Guid businessId,
            BusinessNotificationQueryParameters parameters);
    }
}
