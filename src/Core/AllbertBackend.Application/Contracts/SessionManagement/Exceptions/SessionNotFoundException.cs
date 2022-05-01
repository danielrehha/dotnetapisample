using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Contracts.SessionManagement.Exceptions
{
    public class SessionNotFoundException : Exception
    {
        public SessionNotFoundException(string sessionId)
        {
            SessionId = sessionId;
        }

        public string SessionId { get; }
        public override string Message => @$"Session with ID ""[{SessionId}]"" was not found.";
    }
}
