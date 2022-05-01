using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery
{
    public class GetCustomerAppointmentListQueryResponse : BaseResponse
    {
        public List<CustomerAppointmentVm> Appointments { get; set; }
    }
}