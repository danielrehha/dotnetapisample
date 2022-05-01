using System;

namespace AllbertBackend.Application.ViewModels
{
    public class EmployeeWorkBlockVm
    {
        public Guid Id { get; set; }
        public Guid EmployeeId { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public string Description { get; set; }
    }
}