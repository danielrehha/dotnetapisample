using System;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList
{
    public class GetEmployeeNameListQuery : IRequest<GetEmployeeNameListQueryResponse>
    {
        public GetEmployeeNameListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }

        public Guid BusinessId { get; }
    }
}