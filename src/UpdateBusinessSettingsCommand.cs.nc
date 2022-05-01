using System;
using AllbertBackend.Domain.Entities;
using MediatR;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateSettings
{
    public class UpdateBusinessSettingsCommand : IRequest<UpdateBusinessSettingsCommandResponse>
    {
        public UpdateBusinessSettingsCommand(Guid businessId, BusinessSettings businessSettings)
        {
            BusinessId = businessId;
            BusinessSettings = businessSettings;
        }
        public Guid BusinessId { get; }
        public BusinessSettings BusinessSettings { get; }
    }
}
