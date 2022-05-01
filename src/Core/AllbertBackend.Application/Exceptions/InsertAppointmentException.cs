using System;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Exceptions
{
    public class InsertAppointmentException : Exception
    {
        public InsertAppointmentException(string message) : base(message)
        {
        }
    }
}
