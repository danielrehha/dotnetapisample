using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails
{
    public class CustomerDetailsDto
    {
        public int TotalAppointmentCount { get; set; }
        public int UnCompletedAppointmentCount { get; set; }
        public double AppointmentCompletionIndex { get; set; }
        public CustomerDetailsVm Customer { get; set; }
    }
}
