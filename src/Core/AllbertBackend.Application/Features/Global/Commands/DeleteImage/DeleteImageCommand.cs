using MediatR;
using System;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand

{
    public class DeleteImageCommand : IRequest<DeleteImageCommandResponse>
    {
        public Guid EntityId { get; set; }
        public Guid FileId { get; set; }
        public ImageType ImageType { get; set; }
        public EntityType EntityType { get; set; }

        public DeleteImageCommand(Guid entityId, Guid fileId, ImageType imageType, EntityType entityType)
        {
            EntityId = entityId;
            FileId = fileId;
            ImageType = imageType;
            EntityType = entityType;
        }

        public DeleteImageCommand(Guid entityId, ImageType imageType, EntityType entityType)
        {
            EntityId = entityId;
            ImageType = imageType;
            EntityType = entityType;
        }
    }
}
