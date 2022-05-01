using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.DeleteEmployee
{
    public class DeleteEmployeeCommand : IRequest<DeleteEmployeeCommandResponse>
    {
        public DeleteEmployeeCommand(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
        public Guid EmployeeId { get; }
    }
}
