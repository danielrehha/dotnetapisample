using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerFavoriteCommand
{
    public class CreateCustomerFavoriteCommand : IRequest<CreateCustomerFavoriteCommandResponse>
    {
        public CreateCustomerFavoriteCommand(Guid customerId, Guid entityId, string entityType)
        {
            CustomerId = customerId;
            EntityId = entityId;
            EntityType = entityType;
        }

        public Guid CustomerId { get; }
        public Guid EntityId { get; }
        public string EntityType { get; }
    }
}
