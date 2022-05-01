using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand
{
    public class CreateEmployeeCommand : IRequest<CreateEmployeeCommandResponse>
    {
        public Guid BusinessId { get; set; }
        public AllbertBackend.Domain.Entities.EmployeeInfo EmployeeInfo { get; set; }

        public CreateEmployeeCommand(Guid businessId, AllbertBackend.Domain.Entities.EmployeeInfo employeeInfo)
        {
            BusinessId = businessId;
            EmployeeInfo = employeeInfo;
        }
    }
}
