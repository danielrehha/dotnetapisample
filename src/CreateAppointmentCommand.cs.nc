using AllbertBackend.Domain.Entities;
using MediatR;
using System;
namespace AllbertBackend.Application.Features.Global.Commands.CreateAppointment
{
    public class CreateAppointmentCommand : IRequest<CreateAppointmentCommandResponse>
    {
        public Appointment Appointment { get; }
        public string CreatedBy { get; }
        public CreateAppointmentCommand(Appointment appointment, string createdBy)
        {
            Appointment = appointment;
            Appointment.Id = Guid.NewGuid();
            CreatedBy = createdBy;
        }
    }
}
