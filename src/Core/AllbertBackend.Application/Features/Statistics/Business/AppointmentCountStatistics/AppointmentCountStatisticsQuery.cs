using System;
using System.Collections.Generic;
using MediatR;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountStatisticsQuery : IRequest<AppointmentCountStatisticsQueryResponse>
    {
        public AppointmentCountStatisticsQuery(Guid businessId, List<Guid> employeeIds, DateTime from, DateTime until)
        {
            Parameters = new AppointmentCountStatisticsQueryParameters();

            Parameters.BusinessId = businessId;
            Parameters.EmployeeIds = employeeIds;
            Parameters.From = from;
            Parameters.Until = until;
        }

        public AppointmentCountStatisticsQueryParameters Parameters { get; }
    }
}