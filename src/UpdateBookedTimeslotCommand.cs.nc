using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateBookedTimeslot
{
    public class UpdateBookedTimeslotCommand : IRequest<UpdateBookedTimeslotCommandResponse>
    {
        public Guid EmployeeId { get; }
        public Guid TimeslotId { get; }
        public Appointment BookedTimeslot { get; }
        public UpdateBookedTimeslotCommand(Guid employeeId, Guid timeslotId, Appointment bookedTimeslot)
        {
            EmployeeId = employeeId;
            TimeslotId = timeslotId;
            BookedTimeslot = bookedTimeslot;
        }
    }
}
