using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServiceListQuery
{
    public class EmployeeServiceListQueryResponse : BaseResponse
    {
        public List<ServiceVm> Services { get; set; }
    }
}