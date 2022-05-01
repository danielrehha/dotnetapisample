using System;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.DeleteWorkBlock
{
    public class DeleteWorkBlockCommand : IRequest<DeleteWorkBlockCommandResponse>
    {
        public DeleteWorkBlockCommand(Guid employeeId, Guid workBlockId)
        {
            EmployeeId = employeeId;
            WorkBlockId = workBlockId;
        }

        public Guid EmployeeId { get; }
        public Guid WorkBlockId { get; }
    }
}