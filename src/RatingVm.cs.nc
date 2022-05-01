using AllbertBackend.Application.Features.Customer.ViewModels;
using System;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class RatingVm
    {
        public Guid Id { get; set; }
        public double Score { get; set; }
        public string Comment { get; set; }
        public Guid CustomerId { get; set; }
        public Guid EmployeeId { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
