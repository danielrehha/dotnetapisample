using System;
using AllbertBackend.Domain.Entities.Shared;
namespace AllbertBackend.Domain.Entities
{
    public class Rating : BaseEntity
    {
        public Guid Id { get; set; }
        public double Score { get; set; }
        public string Comment { get; set; }
        public Guid CustomerId { get; set; }
        public Customer Customer { get; set; }
        public Guid EmployeeId { get; set; }
        public Employee Employee { get; set; }
    }
}
