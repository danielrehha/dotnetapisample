using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfoQuery
{
    public class GetCustomerInfoQueryResponse : BaseResponse
    {
        public CustomerInfoVm CustomerInfo { get; set; }
    }
}