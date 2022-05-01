using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class EmployeeInfoVm
    {
        public Guid EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Job { get; set; }
        public string Description { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string PhoneIso { get; set; }
        public long Color { get; set; }
        public List<EmployeeServiceVm> Services { get; set; } = new List<EmployeeServiceVm>();
    }
}