using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployee
{
    public class GetEmployeeQueryResponse : BaseResponse
    {
        public EmployeeVm Employee { get; set; }
    }
}
