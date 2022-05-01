using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateEmployeeSettings
{
    public class UpdateEmployeeSettingsCommand : IRequest<UpdateEmployeeSettingsCommandResponse>
    {
        public UpdateEmployeeSettingsCommand(Guid employeeId, EmployeeSettings settings)
        {
            EmployeeId = employeeId;
            Settings = settings;
        }

        public Guid EmployeeId { get; }
        public EmployeeSettings Settings { get; }
    }
}