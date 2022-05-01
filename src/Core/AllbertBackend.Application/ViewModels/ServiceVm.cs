using System;

namespace AllbertBackend.Application.ViewModels
{
    public class ServiceVm
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public string Name { get; set; }
        public double Cost { get; set; }
        public int Duration { get; set; }
        public string Currency { get; set; }
        public DateTime CreatedOn { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
    }
}