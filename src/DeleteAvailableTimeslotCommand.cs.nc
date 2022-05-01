using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.DeleteAvailableTimeslot
{
    public class DeleteAvailableTimeslotCommand : IRequest<DeleteAvailableTimeslotCommandResponse>
    {
        public DeleteAvailableTimeslotCommand(Guid employeeId, Guid timeslotId)
        {
            EmployeeId = employeeId;
            TimeslotId = timeslotId;
        }
        public Guid EmployeeId { get; }
        public Guid TimeslotId { get; }
    }
}
