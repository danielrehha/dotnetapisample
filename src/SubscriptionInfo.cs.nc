using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class SubscriptionInfo : BaseEntity
    {
        public Guid BusinessId { get; set; }
        public DateTime StartedOn { get; set; }
        public DateTime EndsOn { get; set; }
        public bool DoesRenew { get; set; }
        public bool IsTrial { get; set; }
        public int SubscriptionId { get; set; }
        public Subscription Subscription { get; set; }
        public Business Business { get; set; }
    }
}
