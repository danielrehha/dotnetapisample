using AllbertBackend.Application.Helpers;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
{
    public class GetBusinessCustomerListQueryResponse : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<CustomerListViewVm> Customers { get; set; }
    }
}
