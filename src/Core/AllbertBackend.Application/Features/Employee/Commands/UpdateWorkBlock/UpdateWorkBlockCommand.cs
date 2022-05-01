using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateWorkBlock
{
    public class UpdateWorkBlockCommand : IRequest<UpdateWorkBlockCommandResponse>
    {
        public UpdateWorkBlockCommand(Guid employeeId,EmployeeWorkBlock workBlock)
        {
            EmployeeId = employeeId;
            WorkBlock = workBlock;
        }

        public Guid EmployeeId { get; }
        public EmployeeWorkBlock WorkBlock { get; }
    }
}