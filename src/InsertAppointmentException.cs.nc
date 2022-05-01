using System;
namespace AllbertBackend.Application.Exceptions
{
    public class InsertAppointmentException : Exception
    {
        public InsertAppointmentException(string message) : base(message)
        {
        }
    }
}
