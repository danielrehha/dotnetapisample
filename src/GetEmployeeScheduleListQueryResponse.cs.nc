using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList
{
    public class GetEmployeeScheduleListQueryResponse : BaseResponse
    {
        public List<CalendarEmployeeVm> Employees { get; set; }
    }
}
