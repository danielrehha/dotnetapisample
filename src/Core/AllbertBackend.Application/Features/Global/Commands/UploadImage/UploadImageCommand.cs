using MediatR;
using Microsoft.AspNetCore.Http;
using System;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.UploadImageCommand
{
    public class UploadImageCommand : IRequest<UploadImageCommandResponse>
    {
        public UploadImageCommand(IFormFile file, EntityType entityType, ImageType imageType, Guid entityId)
        {
            File = file;
            EntityType = entityType;
            ImageType = imageType;
            EntityId = entityId;
        }

        public IFormFile File { get; set; }
        public EntityType EntityType { get; set; }
        public ImageType ImageType { get; set; }
        public Guid EntityId { get; set; }
    }
}
