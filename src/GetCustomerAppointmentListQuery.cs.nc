using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentList
{
    public class GetCustomerAppointmentListQuery : IRequest<GetCustomerAppointmentListQueryResponse>
    {
        public Guid CustomerId { get; }
        public string Status { get; set; }
        public GetCustomerAppointmentListQuery(Guid customerId, string status)
        {
            CustomerId = customerId;
            Status = status;
        }
    }
}
