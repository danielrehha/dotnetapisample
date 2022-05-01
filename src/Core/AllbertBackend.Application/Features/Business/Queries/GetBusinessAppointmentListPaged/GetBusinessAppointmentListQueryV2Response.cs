using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListQueryV2
{
    public class GetBusinessAppointmentListQueryV2Response : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<AppointmentVm> Appointments { get; set; }
    }
}
