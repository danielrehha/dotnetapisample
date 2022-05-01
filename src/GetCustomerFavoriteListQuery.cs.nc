using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteList
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
