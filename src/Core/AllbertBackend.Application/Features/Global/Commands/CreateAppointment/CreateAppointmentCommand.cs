using MediatR;
using System;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Global.Commands.CreateAppointmentCommand
{
    public class CreateAppointmentCommand : IRequest<CreateAppointmentCommandResponse>
    {
        public Appointment Appointment { get; }
        public string CreatedBy { get; }

        public CreateAppointmentCommand(Appointment appointment, string createdBy)
        {
            Appointment = appointment;
            //Appointment.Id = Guid.NewGuid();
            CreatedBy = createdBy;
        }
    }
}
