using System;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountDto
    {
        public DateTime Date { get; set; }
        public int AppointmentCount { get; set; }
    }
}