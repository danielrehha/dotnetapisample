using System;
using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class StatisticsEmployeeVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<StatisticsAppointmentVm> Appointments { get; set; }
    }
}