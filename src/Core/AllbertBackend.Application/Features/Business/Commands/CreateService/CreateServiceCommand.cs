using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Commands.CreateServiceCommand
{
    public class CreateServiceCommand : IRequest<CreateServiceCommandResponse>
    {
        public Service Service { get; }
        public CreateServiceCommand(Service service)
        {
            Service = service;
        }
    }
}
