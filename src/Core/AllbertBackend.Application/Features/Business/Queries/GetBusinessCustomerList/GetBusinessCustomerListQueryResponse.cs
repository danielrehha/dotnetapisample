using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerListQuery
{
    public class GetBusinessCustomerListQueryResponse : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<CustomerListViewVm> Customers { get; set; }
    }
}