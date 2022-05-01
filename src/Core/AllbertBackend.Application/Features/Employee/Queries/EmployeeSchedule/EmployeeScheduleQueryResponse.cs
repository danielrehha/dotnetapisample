using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeScheduleQuery
{
    public class EmployeeScheduleQueryResponse : BaseResponse
    {
        public EmployeeScheduleVm EmployeeSchedule { get; set; }
    }
}
