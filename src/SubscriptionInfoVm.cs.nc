using System;
namespace AllbertBackend.Application.Features.Business.ViewModels
{
    public class SubscriptionInfoVm
    {
        public DateTime CreatedOn { get; set; }
        public DateTime EndsOn { get; set; }
        public bool DoesRenew { get; set; }
        public bool IsTrial { get; set; }
        public int SubscriptionId { get; set; }
        public SubscriptionVm Subscription { get; set; }
    }
}
