using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateService
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
