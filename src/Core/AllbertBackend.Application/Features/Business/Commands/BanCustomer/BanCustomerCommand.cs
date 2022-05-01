using System;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.BanCustomerCommand
{
    public class BanCustomerCommand : IRequest<BanCustomerCommandResponse>
    {
        public BanCustomerCommand(Guid businessId, Guid customerId)
        {
            BusinessId = businessId;
            CustomerId = customerId;
        }

        public Guid BusinessId { get; }
        public Guid CustomerId { get; }
    }
}