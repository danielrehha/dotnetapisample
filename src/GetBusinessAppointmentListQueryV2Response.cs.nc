using AllbertBackend.Application.Features.Employee.ViewModels;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListPaged
{
    public class GetBusinessAppointmentListQueryV2Response : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<AppointmentVm> Appointments { get; set; }
    }
}
