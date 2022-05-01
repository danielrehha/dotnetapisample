using MediatR;
using System;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployeeCommand
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
