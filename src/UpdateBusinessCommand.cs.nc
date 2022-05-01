using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateBusiness
{
    public class UpdateBusinessCommand : IRequest<UpdateBusinessCommandResponse>
    {
        public BusinessInfo BusinessInfo { get; }
        public UpdateBusinessCommand(BusinessInfo businessInfo)
        {
            BusinessInfo = businessInfo;
        }
    }
}
