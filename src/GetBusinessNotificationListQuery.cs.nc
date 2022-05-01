using AllbertBackend.Domain.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationList
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
