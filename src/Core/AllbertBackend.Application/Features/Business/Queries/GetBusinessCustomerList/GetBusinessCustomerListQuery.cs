using MediatR;
using System;
using AllbertBackend.Domain.Dtos;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerListQuery
{
    public class GetBusinessCustomerListQuery : IRequest<GetBusinessCustomerListQueryResponse>
    {
        public Guid BusinessId { get; set; }
        public BusinessCustomerQueryParameters Parameters;

        public GetBusinessCustomerListQuery(Guid businessId, BusinessCustomerQueryParameters parameters)
        {
            BusinessId = businessId;
            Parameters = parameters;
        }
    }
}
