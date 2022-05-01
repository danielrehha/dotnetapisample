using AllbertBackend.Application.Features.Customer.ViewModels;
using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomer
{
    public class CreateCustomerCommandResponse : BaseResponse
    {
        public CustomerVm Customer { get; set; }
    }
}
