using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerQuery
{
    public class GetCustomerQueryResponse : BaseResponse
    {
        public CustomerVm Customer { get; set; }
    }
}