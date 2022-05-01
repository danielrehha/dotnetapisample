using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationListQuery
{
    public class GetBusinessNotificationListQueryResponse : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<NotificationDto> Notifications { get; set; }
    }
}