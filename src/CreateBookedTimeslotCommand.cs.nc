using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateBookedTimeslot
{
    public class CreateBookedTimeslotCommand : IRequest<CreateBookedTimeslotCommandResponse>
    {
        public Guid EmployeeId { get; }
        public Appointment Timeslot { get; }
        public CreateBookedTimeslotCommand(Guid employeeId, Appointment timeslot)
        {
            EmployeeId = employeeId;
            Timeslot = timeslot;
        }
    }
}
