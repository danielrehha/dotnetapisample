using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.SearchEmployeeListQuery
{
    public class SearchEmployeeListQueryResponse : BaseResponse
    {
        public List<CustomerEmployeeVm> Employees { get; set; } = new List<CustomerEmployeeVm>();
    }
}