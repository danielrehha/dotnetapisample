using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeSchedule
{
    public class EmployeeScheduleQueryResponse : BaseResponse
    {
        public EmployeeScheduleVm EmployeeSchedule { get; set; }
    }
}
