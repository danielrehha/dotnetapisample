using AllbertBackend.Domain.Common;
using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class AvailableTimeslot : BaseEntity
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public Guid EmployeeId { get; set; }
    }
}
