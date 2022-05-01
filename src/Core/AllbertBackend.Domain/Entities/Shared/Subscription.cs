using System;
using System.Collections.Generic;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class Subscription : BaseEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int MaxEmployees { get; set; }
        public int MaxDates { get; set; }
        public int MaxServices { get; set; }
        public double Cost { get; set; }
        public string CostCurrency { get; set; }

        public List<SubscriptionInfo> SubscriptionsInfos { get; set; }
    }
}
