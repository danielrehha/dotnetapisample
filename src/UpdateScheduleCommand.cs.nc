using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities.Shared;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateSchedule
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
