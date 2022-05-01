using AllbertBackend.Application.Features.Customer.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResult
{
    public class GetCustomerSearchResultQueryResponse : BaseResponse
    {
        public List<CustomerBusinessVm> Businesses { get; set; }
        public List<CustomerEmployeeVm> Employees { get; set; }
    }
}
