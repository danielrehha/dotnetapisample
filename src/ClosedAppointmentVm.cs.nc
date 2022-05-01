using AllbertBackend.Application.Features.Customer.ViewModels;
using System;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class ClosedAppointmentVm
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool Ended { get; set; } 
        public int Status { get; set; } 
        public Guid EmployeeId { get; set; }
        public EmployeeVm Employee { get; set; }
        public Guid BusinessId { get; set; }
        public Guid CustomerId { get; set; }
        public CustomerVm Customer { get; set; }
        public Guid ServiceId { get; set; }
        public ServiceVm Service { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
