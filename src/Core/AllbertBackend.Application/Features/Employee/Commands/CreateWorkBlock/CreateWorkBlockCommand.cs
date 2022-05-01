using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.CreateWorkBlock
{
    public class CreateWorkBlockCommand : IRequest<CreateWorkBlockCommandResponse>
    {
        public CreateWorkBlockCommand(Guid employeeId,EmployeeWorkBlock workBlock)
        {
            EmployeeId = employeeId;
            WorkBlock = workBlock;
        }

        public Guid EmployeeId { get; }
        public EmployeeWorkBlock WorkBlock { get; }
    }
}