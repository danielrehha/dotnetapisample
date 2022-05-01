using AllbertBackend.Application.Features.Customer.ViewModels;
using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentList
{
    public class GetCustomerAppointmentListQueryResponse : BaseResponse
    {
        public List<CustomerAppointmentVm> Appointments { get; set; }
    }
}
