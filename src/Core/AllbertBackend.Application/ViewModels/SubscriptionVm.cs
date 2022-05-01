namespace AllbertBackend.Application.ViewModels
{
    public class SubscriptionVm
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int MaxEmployees { get; set; }
        public int MaxDates { get; set; }
        public int MaxServices { get; set; }
        public double Cost { get; set; }
        public string CostCurrency { get; set; }
    }
}