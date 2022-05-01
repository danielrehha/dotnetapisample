using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.ReadOnly.Statistics;
using MediatR;

namespace AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics
{
    public class AppointmentCountStatisticsQueryHandler : IRequestHandler<AppointmentCountStatisticsQuery, AppointmentCountStatisticsQueryResponse>
    {
        private readonly IBusinessStatisticsClient _repository;

        public AppointmentCountStatisticsQueryHandler(IBusinessStatisticsClient repository)
        {
            _repository = repository;
        }

        public async Task<AppointmentCountStatisticsQueryResponse> Handle(AppointmentCountStatisticsQuery request, CancellationToken cancellationToken)
        {
            var response = new AppointmentCountStatisticsQueryResponse();

            try
            {
                response.Data = await _repository.GetAppointmentCountStatisticsAsync(request.Parameters);
            }
            catch (Exception e)
            {
                response.ErrorMessage = e.Message;
                response.Success = false;
                return response;
            }
            
            return response;
        }
    }
}