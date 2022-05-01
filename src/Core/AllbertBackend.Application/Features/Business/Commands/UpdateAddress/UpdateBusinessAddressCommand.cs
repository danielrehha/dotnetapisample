using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateAddress
{
    public class UpdateBusinessAddressCommand : IRequest<UpdateBusinessAddressCommandResponse>
    {
        public UpdateBusinessAddressCommand(Guid businessId, BusinessAddress address)
        {
            BusinessId = businessId;
            Address = address;
        }

        public Guid BusinessId { get; }
        public BusinessAddress Address { get; }
    }
}