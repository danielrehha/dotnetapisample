using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResultQuery
{
    public class GetCustomerSearchResultQueryResponse : BaseResponse
    {
        public List<CustomerBusinessVm> Businesses { get; set; }
        public List<CustomerEmployeeVm> Employees { get; set; }
    }
}