using System;
using AllbertBackend.Domain.Entities.Shared;

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

        public static SubscriptionInfo getDefault(Guid businessId, int subscriptionId)
        {
            return new SubscriptionInfo()
            {
                BusinessId = businessId,
                StartedOn = DateTime.UtcNow,
                EndsOn = DateTime.UtcNow.AddDays(30),
                DoesRenew = false,
                IsTrial = true,
                SubscriptionId = subscriptionId,
            };
        }
    }
}