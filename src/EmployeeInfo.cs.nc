using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
namespace AllbertBackend.Domain.Entities
{
    public class EmployeeInfo : BaseEntity
    {
        public Guid EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Job { get; set; }
        public string Description { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string PhoneIso { get; set; }
        public Int64 Color { get; set; }
        public List<EmployeeService> Services { get; set; } = new List<EmployeeService>();
    }
}
