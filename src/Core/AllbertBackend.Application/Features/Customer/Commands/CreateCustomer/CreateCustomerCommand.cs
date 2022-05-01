using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerCommand
{
    public class CreateCustomerCommand : IRequest<CreateCustomerCommandResponse>
    {
        public string FirebaseUid { get; }
        public CustomerInfo CustomerInfo { get; }

        public CreateCustomerCommand(string firebaseUid, CustomerInfo customerInfo)
        {
            FirebaseUid = firebaseUid;
            CustomerInfo = customerInfo;
        }
    }
}
