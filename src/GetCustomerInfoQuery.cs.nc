using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfo
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
