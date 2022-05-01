using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeQuery
{
    public class GetEmployeeQueryResponse : BaseResponse
    {
        public EmployeeVm Employee { get; set; }
    }
}