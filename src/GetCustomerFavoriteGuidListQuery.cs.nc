using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
