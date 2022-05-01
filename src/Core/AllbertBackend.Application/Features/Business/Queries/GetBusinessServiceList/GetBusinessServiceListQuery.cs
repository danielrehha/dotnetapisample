using MediatR;
using System;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceListQuery
{
    public class GetBusinessServiceListQuery : IRequest<GetBusinessServiceListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetBusinessServiceListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
