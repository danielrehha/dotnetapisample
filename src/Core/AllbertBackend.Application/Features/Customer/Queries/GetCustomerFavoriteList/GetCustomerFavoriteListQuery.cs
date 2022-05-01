using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteListQuery
{
    public class GetCustomerFavoriteListQuery : IRequest<GetCustomerFavoriteListQueryResponse>
    {
        public GetCustomerFavoriteListQuery(Guid customerId, string entityType)
        {
            CustomerId = customerId;
            EntityType = entityType;
        }

        public Guid CustomerId { get; }
        public string EntityType { get; }
    }
}
