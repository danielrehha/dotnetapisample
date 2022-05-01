using System;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UnBanCustomerCommand
{
    public class UnBanCustomerCommand : IRequest<UnBanCustomerCommandResponse>
    {
        public UnBanCustomerCommand(Guid businessId, Guid customerId)
        {
            BusinessId = businessId;
            CustomerId = customerId;
        }

        public Guid BusinessId { get; }
        public Guid CustomerId { get; }
    }
}