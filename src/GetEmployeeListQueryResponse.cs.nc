using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeList
{
    public class GetEmployeeListQueryResponse : BaseResponse
    {
        public List<EmployeeVm> Employees { get; set; }
    }
}
