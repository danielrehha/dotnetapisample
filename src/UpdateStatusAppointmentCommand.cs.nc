using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Commands.DeleteAppointment
{
    public class UpdateStatusAppointmentCommand : IRequest<UpdateAppointmentStatusCommandResponse>
    {
        public Guid AppointmentId { get; }
        public int Status { get; }
        public UpdateStatusAppointmentCommand(Guid appointmentId, int status)
        {
            AppointmentId = appointmentId;
            Status = status;
        }
    }
}
