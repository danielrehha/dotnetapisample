using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployee
{
    public class UpdateEmployeeCommand : IRequest<UpdateEmployeeCommandResponse>
    {
        public UpdateEmployeeCommand( Guid employeeId, EmployeeInfo employeeInfo)
        {
            EmployeeId = employeeId;
            EmployeeInfo = employeeInfo;
        }
        public Guid EmployeeId { get; }
        public EmployeeInfo EmployeeInfo { get; }
    }
}
