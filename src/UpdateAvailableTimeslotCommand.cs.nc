using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateAvailableTimeslot
{
    public class UpdateAvailableTimeslotCommand : IRequest<UpdateAvailableTimeslotCommandResponse>
    {
        public UpdateAvailableTimeslotCommand(Guid employeeId, Guid timeslotId, AvailableTimeslot timeslot)
        {
            EmployeeId = employeeId;
            TimeslotId = timeslotId;
            Timeslot = timeslot;
        }
        public Guid EmployeeId { get; }
        public Guid TimeslotId { get; }
        public AvailableTimeslot Timeslot { get; }
    }
}
