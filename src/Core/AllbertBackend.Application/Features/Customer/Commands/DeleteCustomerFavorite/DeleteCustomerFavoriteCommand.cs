using MediatR;
using System;

namespace AllbertBackend.Application.Features.Customer.Commands.DeleteCustomerFavoriteCommand
{
    public class DeleteCustomerFavoriteCommand : IRequest<DeleteCustomerFavoriteCommandResponse>
    {
        public DeleteCustomerFavoriteCommand(Guid customerId, Guid entityId, string entityType)
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
