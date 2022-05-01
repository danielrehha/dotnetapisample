using MediatR;
using System;
using AllbertBackend.Domain.Dtos;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationListQuery
{
    public class GetBusinessNotificationListQuery : IRequest<GetBusinessNotificationListQueryResponse>
    {
        public GetBusinessNotificationListQuery(Guid businessId, BusinessNotificationQueryParameters parameters)
        {
            BusinessId = businessId;
            Parameters = parameters;
        }

        public Guid BusinessId { get; set; }
        public BusinessNotificationQueryParameters Parameters { get; set; }
    }
}
