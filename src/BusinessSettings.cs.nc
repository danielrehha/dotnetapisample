using System;
namespace AllbertBackend.Domain.Entities
{
    public class BusinessSettings
    {
        public Guid BusinessId { get; set; }
        public string LangIso639Code { get; set; }
        public bool AppointmentEmailsEnabled { get; set; }
        public bool PromotionalEmailsEnabled { get; set; }
        public bool DarkModeEnabled { get; set; }
    }
}
