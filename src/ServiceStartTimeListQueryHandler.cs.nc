using AllbertBackend.Application.Contracts.Persistence;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.GetAvailableServiceDates
{
    public class ServiceStartTimeListQueryHandler : IRequestHandler<ServiceStartTimeListQuery, ServiceStartTimeListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;
        public ServiceStartTimeListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<ServiceStartTimeListQueryResponse> Handle(ServiceStartTimeListQuery request, CancellationToken cancellationToken)
        {
            var response = new ServiceStartTimeListQueryResponse();
            var validator = new ServiceStartTimeListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            try
            {
                if(request.UseV2)
                {
                    response.StartTimes = await _repository.GetServiceStartTimeListAsyncV2(request.EmployeeId, request.ServiceId);
                } else
                {
                    response.StartTimes = await _repository.GetServiceStartTimeListAsync(request.EmployeeId, request.ServiceId);
                }
            } catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
                return response;
            }
            return response;
        }
    }
}
