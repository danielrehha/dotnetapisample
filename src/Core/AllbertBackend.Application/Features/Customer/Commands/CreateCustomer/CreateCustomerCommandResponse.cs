using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerCommand
{
    public class CreateCustomerCommandResponse : BaseResponse
    {
        public CustomerVm Customer { get; set; }
    }
}