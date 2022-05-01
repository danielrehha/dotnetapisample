using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery
{
    public class GetEmployeeScheduleListQueryResponse : BaseResponse
    {
        public List<CalendarEmployeeVm> Employees { get; set; }
    }
}