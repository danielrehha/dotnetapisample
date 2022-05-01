using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Commands.UpdateCustomerCommand
{
    public class UpdateCustomerCommandResponse : BaseResponse
    {
        public CustomerInfoVm CustomerInfo { get; set; }
    }
}