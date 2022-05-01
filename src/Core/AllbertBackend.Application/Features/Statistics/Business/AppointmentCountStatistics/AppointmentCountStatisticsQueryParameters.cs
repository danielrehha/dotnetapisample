using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountStatisticsQueryParameters
    {
        public Guid BusinessId { get; set; }
        public List<Guid> EmployeeIds { get; set; }
        public DateTime From { get; set; }
        public DateTime Until { get; set; }
    }
}