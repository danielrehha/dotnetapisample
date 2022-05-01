using System.Collections.Generic;
using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListAsync
{
    public class GetBusinessAppointmentListQueryResponse : BaseResponse
    {
        public List<AppointmentVm> Appointments { get; set; }
    }
}
