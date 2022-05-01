using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountStatisticsQueryResponse : BaseResponse
    {
        public List<AppointmentCountStatisticsDto> Data { get; set; }
    }
}