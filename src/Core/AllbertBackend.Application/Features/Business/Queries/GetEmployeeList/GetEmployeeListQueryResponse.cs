using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery
{
    public class GetEmployeeListQueryResponse : BaseResponse
    {
        public List<EmployeeVm> Employees { get; set; }
    }
}