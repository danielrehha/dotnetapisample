using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfoQuery
{
    public class GetCustomerInfoQuery : IRequest<GetCustomerInfoQueryResponse>
    {
        public Guid CustomerId { get; }

        public GetCustomerInfoQuery(Guid customerId)
        {
            CustomerId = customerId;
        }
    }
}
