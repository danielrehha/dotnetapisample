using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateService
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
