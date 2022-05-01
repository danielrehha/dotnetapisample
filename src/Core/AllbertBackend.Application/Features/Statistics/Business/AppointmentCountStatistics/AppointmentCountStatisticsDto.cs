using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountStatisticsDto
    {
        public Guid EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public List<AppointmentCountDto> Statistics { get; set; }
    }
}