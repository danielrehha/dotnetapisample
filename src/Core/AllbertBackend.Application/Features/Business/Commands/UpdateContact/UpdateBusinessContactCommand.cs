using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateContact
{
    public class UpdateBusinessContactCommand : IRequest<UpdateBusinessContactCommandResponse>
    {
        public UpdateBusinessContactCommand(Guid businessId, BusinessContact contact)
        {
            BusinessId = businessId;
            Contact = contact;
        }

        public Guid BusinessId { get; set; }
        public BusinessContact Contact { get; set; }
    }
}