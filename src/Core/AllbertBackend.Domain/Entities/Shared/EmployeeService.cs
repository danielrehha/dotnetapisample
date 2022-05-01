using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class EmployeeService : BaseEntity
    {
        public Guid EmployeeId { get; set; }
        public EmployeeInfo EmployeeInfo { get; set; }
        public Guid ServiceId { get; set; }
        public Service Service { get; set; }
    }
}