using MediatR;
using System;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery
{
    public class GetEmployeeListQuery : IRequest<GetEmployeeListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetEmployeeListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
