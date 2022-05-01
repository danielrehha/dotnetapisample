using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList
{
    public class GetCustomerReviewListQueryResponse : BaseResponse
    {
        public dynamic PaginationData { get; set; }
        public PagedList<CustomerReviewVm> CustomerReviews { get; set; }
    }
}