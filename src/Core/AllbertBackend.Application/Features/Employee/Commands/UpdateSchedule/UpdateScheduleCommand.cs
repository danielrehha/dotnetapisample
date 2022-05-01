using MediatR;
using System;
using AllbertBackend.Domain.Dtos;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand
{
    public class UpdateScheduleCommand : IRequest<UpdateScheduleCommandResponse>
    {
        public UpdateScheduleCommand(Guid employeeId, EmployeeScheduleUpdateDto scheduleUpdateDto)
        {
            EmployeeId = employeeId;
            ScheduleUpdateDto = scheduleUpdateDto;
        }
        public Guid EmployeeId { get; }
        public EmployeeScheduleUpdateDto ScheduleUpdateDto { get; }
    }
}
