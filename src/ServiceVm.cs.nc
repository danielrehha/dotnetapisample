using System;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class ServiceVm
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public string Name { get; set; }
        public double Cost { get; set; }
        public int Duration { get; set; }
        public int Offset { get; set; }
        public int PauseAfterInMinutes { get; set; }
        public string Currency { get; set; }
    }
}
