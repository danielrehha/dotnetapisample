using System.Diagnostics;
using AllbertBackend.Domain.Common;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Exceptions
{
    public class RequestValidationException : BaseException
    {
        public override string Message { get { return (string)obj; } }
        public RequestValidationException(string message) : base(message)
        {
            Trace.TraceInformation($"A validation error occured while validating the request: '{message}'");
        }
    }
}
