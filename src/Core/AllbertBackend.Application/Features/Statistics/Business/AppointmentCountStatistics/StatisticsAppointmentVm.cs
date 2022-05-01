using System;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class StatisticsAppointmentVm
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; }
    }
}