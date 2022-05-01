using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class CustomerReview
    {
        public int Rating { get; set; }
        public string Comment { get; set; }

        public Guid CustomerId { get; set; }
        public Customer Customer { get; set; }

        public Guid EmployeeId { get; set; }
        public Employee Employee { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
