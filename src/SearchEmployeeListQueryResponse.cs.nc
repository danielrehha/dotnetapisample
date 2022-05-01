using AllbertBackend.Application.Features.Customer.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Global.Queries.SearchEmployeeList
{
    public class SearchEmployeeListQueryResponse : BaseResponse
    {
        public List<CustomerEmployeeVm> Employees { get; set; } = new List<CustomerEmployeeVm>();
    }
}
