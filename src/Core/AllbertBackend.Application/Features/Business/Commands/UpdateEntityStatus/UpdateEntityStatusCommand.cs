using System;
using AllbertBackend.Domain.Enums;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateEntityStatus
{
    public class UpdateEntityStatusCommand : IRequest<UpdateEntityStatusCommandResponse>
    {
        public UpdateEntityStatusCommand(Guid entityId, EntityType entityType, EntityStatus entityStatus)
        {
            EntityId = entityId;
            EntityType = entityType;
            EntityStatus = entityStatus;
        }

        public Guid EntityId { get; }
        public EntityType EntityType { get; }
        public EntityStatus EntityStatus { get; }
    }
}