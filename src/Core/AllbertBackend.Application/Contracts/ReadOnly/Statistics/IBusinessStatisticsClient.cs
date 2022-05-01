using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics;

namespace AllbertBackend.Application.Contracts.ReadOnly.Statistics
{
    public interface IBusinessStatisticsClient
    {
        Task<List<AppointmentCountStatisticsDto>> GetAppointmentCountStatisticsAsync(
            AppointmentCountStatisticsQueryParameters requestParameters);
    }
}