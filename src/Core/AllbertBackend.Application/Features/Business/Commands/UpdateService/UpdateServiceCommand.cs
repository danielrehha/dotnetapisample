using MediatR;
using System;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateServiceCommand
{
    public class UpdateServiceCommand : IRequest<UpdateServiceCommandResponse>
    {
        public UpdateServiceCommand(Guid serviceId, Service service)
        {
            Service = service;
            ServiceId = serviceId;
        }
        public Guid ServiceId { get; }
        public Service Service { get; }
    }
}
