using AllbertBackend.Application.Features.Customer.ViewModels;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfo
{
    public class GetCustomerInfoQueryResponse : BaseResponse
    {
        public CustomerInfoVm CustomerInfo { get; set; }
    }
}
