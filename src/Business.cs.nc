using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
namespace AllbertBackend.Domain.Entities
{
    public class Business : BaseEntity
    {
        public Guid Id { get; set; }
        public string FirebaseUid { get; set; }
        public BusinessInfo BusinessInfo { get; set; }
        public BusinessAvatarImage Avatar { get; set; }
        public List<Employee> Employees { get; set; } = new List<Employee>();
        public List<BusinessPortfolioImage> PortfolioImages { get; set; } = new List<BusinessPortfolioImage>();
        public SubscriptionInfo SubscriptionInfo { get; set; }
        public List<Service> Services { get; set; } = new List<Service>();
        public List<BusinessCustomerBan> CustomerBanList { get; set; } = new List<BusinessCustomerBan>();
        public BusinessSettings BusinessSettings { get; set; }
        public List<ApplicationEvent> Events { get; set; } = new List<ApplicationEvent>();
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
    }
}
