using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateAvailableTimeslot
{
    public class CreateAvailableTimeslotCommand : IRequest<CreateAvailableTimeslotCommandResponse>
    {
        public CreateAvailableTimeslotCommand(Guid employeeId, AvailableTimeslot timeslot)
        {
            EmployeeId = employeeId;
            Timeslot = timeslot;
        }
        public Guid EmployeeId { get; }
        public AvailableTimeslot Timeslot { get; }
    }
}
