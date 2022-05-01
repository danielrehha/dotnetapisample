using AllbertBackend.Application.Features.Customer.ViewModels;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomer
{
    public class GetCustomerQueryResponse : BaseResponse
    {
        public CustomerVm Customer { get; set; }
    }
}
