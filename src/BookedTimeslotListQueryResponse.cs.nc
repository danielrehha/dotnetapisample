using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.Queries.BookedTimeslotList
{
    public class BookedTimeslotListQueryResponse : BaseResponse
    {
        public List<AppointmentVm> BookedTimeslots { get; set; }
    }
}
