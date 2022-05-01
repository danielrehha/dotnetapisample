using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails
{
    public class GetCustomerDetailsQuery : IRequest<GetCustomerDetailsQueryResponse>
    {
        public Guid CustomerId { get; }
        public GetCustomerDetailsQuery(Guid customerId)
        {
            CustomerId = customerId;
        }
    }
}
