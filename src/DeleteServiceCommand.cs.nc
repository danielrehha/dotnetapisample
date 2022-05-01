using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.DeleteService
{
    public class DeleteServiceCommand : IRequest<DeleteServiceCommandResponse>
    {
        public Guid ServiceId { get; }
        public DeleteServiceCommand(Guid serviceId)
        {
            ServiceId = serviceId;
        }
    }
}
