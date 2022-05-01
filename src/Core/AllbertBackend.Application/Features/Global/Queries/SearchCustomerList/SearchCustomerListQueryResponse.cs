using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.SearchCustomerList
{
    public class SearchCustomerListQueryResponse : BaseResponse
    {
        public List<CustomerVm> Customers { get; set; }
    }
}