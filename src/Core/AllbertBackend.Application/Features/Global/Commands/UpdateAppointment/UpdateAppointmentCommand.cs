using System;
using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointment
{
    public class UpdateAppointmentCommand : IRequest<UpdateAppointmentCommandResponse>
    {
        public UpdateAppointmentCommand(Guid id, Appointment appointment)
        {
            Id = id;
            Appointment = appointment;
        }

        public Guid Id { get; }
        public Appointment Appointment { get; }
    }
}