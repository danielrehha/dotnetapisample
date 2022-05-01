using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Features.Customer.ViewModels;
using System;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class AppointmentVm
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; }
        public Guid EmployeeId { get; set; }
        public EmployeeVm Employee { get; set; }
        public Guid BusinessId { get; set; }
        public Guid RatingId { get; set; }
        public RatingVm Rating { get; set; }
        public Guid CustomerId { get; set; }
        public CustomerDetailsVm Customer { get; set; }
        public Guid ServiceId { get; set; }
        public ServiceVm Service { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
