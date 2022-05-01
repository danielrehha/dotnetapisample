using MediatR;
using System;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatusCommand
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
