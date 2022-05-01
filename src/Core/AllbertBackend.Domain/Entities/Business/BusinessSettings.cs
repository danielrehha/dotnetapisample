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
        
        /// <summary>
        /// A - Cash; B - Debit card; C - Credit card; D - SZÉP card; etc..
        /// </summary>
        public string PaymentMethods { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }

        public static BusinessSettings GetDefault(Guid businessId, string langIso639Code = "en")
        {
            return new BusinessSettings()
            {
                BusinessId = businessId,
                LangIso639Code = langIso639Code,
                AppointmentEmailsEnabled = true,
                PromotionalEmailsEnabled = true,
                DarkModeEnabled = false,
                Enabled = true,
                Deleted = false,
                PaymentMethods = "A",
            };
        }
    }
}