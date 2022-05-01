using System;
namespace AllbertBackend.Application.ViewModels
{
    public class WorkPauseVm
    {
        public Guid Id { get; set; }
        public Guid WorkDayId { get; set; }
        public int Index { get; set; }
        public DateTime Date { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}
