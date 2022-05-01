using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class Appointment : BaseEntity
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; } = 0;
        public Guid? EmployeeId { get; set; }
        public Employee Employee { get; set; }
        public Guid BusinessId { get; set; }
        public Guid? CustomerId { get; set; }
        public Customer Customer { get; set; }
        public Guid? ServiceId { get; set; }
        public Service Service { get; set; }
    }
}
