using System;

namespace AllbertBackend.Application.ViewModels
{
    public class BusinessSettingsVm
    {
        public Guid BusinessId { get; set; }
        public string LangIso639Code { get; set; }
        public bool AppointmentEmailsEnabled { get; set; }
        public bool PromotionalEmailsEnabled { get; set; }
        public bool DarkModeEnabled { get; set; }
        public string PaymentMethods { get; set; }
    }
}