using AllbertBackend.Application.Features.Customer.ViewModels;
namespace AllbertBackend.Application.Features.Customer.Commands.UpdateCustomer
{
    public class UpdateCustomerCommandResponse : BaseResponse
    {
        public CustomerInfoVm CustomerInfo { get; set; }
    }
}
