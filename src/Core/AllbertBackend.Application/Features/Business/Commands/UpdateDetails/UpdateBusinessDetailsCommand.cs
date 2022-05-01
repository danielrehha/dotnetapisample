using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateDetails
{
    public class UpdateBusinessDetailsCommand : IRequest<UpdateBusinessDetailsCommandResponse>
    {
        public UpdateBusinessDetailsCommand(Guid businessId, BusinessDetails details)
        {
            BusinessId = businessId;
            Details = details;
        }

        public Guid BusinessId { get; }
        public BusinessDetails Details { get; }
    }
}