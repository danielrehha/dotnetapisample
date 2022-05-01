namespace AllbertBackend.Application.ViewModels
{
    public class CustomerListViewVm
    {
        public int AppointmentCount { get; set; }
        public bool Banned { get; set; }
        public BusinessCustomerListVm Customer { get; set; }
    }
}
