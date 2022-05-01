using System;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Contracts.SessionManagement
{
    public class ApplicationSession
    {
        public Guid EntityId { get; set; }
        public string SessionId { get; set; }
        public bool IsConnected { get; set; }
        public string EntityType { get; set; }
        public string SessionType { get; set; }
    }
}
