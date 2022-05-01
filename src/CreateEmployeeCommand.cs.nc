using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;
using MediatR;
namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployee
{
    public class CreateEmployeeCommand : IRequest<CreateEmployeeCommandResponse>
    {
        public Guid BusinessId { get; set; }
        public Domain.Entities.EmployeeInfo EmployeeInfo { get; set; }
        public CreateEmployeeCommand(Guid businessId, Domain.Entities.EmployeeInfo employeeInfo)
        {
            BusinessId = businessId;
            EmployeeInfo = employeeInfo;
        }
    }
}
