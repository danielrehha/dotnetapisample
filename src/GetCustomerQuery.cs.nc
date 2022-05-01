using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomer
{
    public class GetCustomerQuery : IRequest<GetCustomerQueryResponse>
    {
        public string FirebaseUid { get; }
        public GetCustomerQuery(string firebaseUid)
        {
            FirebaseUid = firebaseUid;
        }
    }
}
