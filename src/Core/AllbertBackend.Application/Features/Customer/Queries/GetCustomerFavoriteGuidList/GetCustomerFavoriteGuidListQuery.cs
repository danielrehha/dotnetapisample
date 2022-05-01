using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList
{
    public class GetCustomerFavoriteGuidListQuery : IRequest<GetCustomerFavoriteGuidListQueryResponse>
    {
        public Guid CustomerId { get; }

        public GetCustomerFavoriteGuidListQuery(Guid customerId)
        {
            CustomerId = customerId;
        }
    }
}
