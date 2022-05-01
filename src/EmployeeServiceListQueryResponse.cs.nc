using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServices
{
    public class EmployeeServiceListQueryResponse : BaseResponse
    {
        public List<ServiceVm> Services { get; set; }
    }
}
