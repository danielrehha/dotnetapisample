using System;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerReviewVm
    {
        public Guid Id { get; set; }
        public int Rating { get; set; }
        public string Comment { get; set; }
        public Guid CustomerId { get; set; }
        public CustomerVm Customer { get; set; }
        public Guid EmployeeId { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}