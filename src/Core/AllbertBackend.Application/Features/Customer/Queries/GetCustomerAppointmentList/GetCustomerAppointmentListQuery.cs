using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery
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
