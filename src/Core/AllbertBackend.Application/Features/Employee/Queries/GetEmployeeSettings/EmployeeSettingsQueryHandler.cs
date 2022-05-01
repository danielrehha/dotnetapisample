using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.ViewModels;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeSettings
{
    public class EmployeeSettingsQueryHandler : IRequestHandler<EmployeeSettingsQuery, EmployeeSettingsQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public EmployeeSettingsQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<EmployeeSettingsQueryResponse> Handle(EmployeeSettingsQuery request, CancellationToken cancellationToken)
        {
            var response = new EmployeeSettingsQueryResponse();

            try
            {
                var result = await _repository.GetEmployeeSettingsAsync(request.EmployeeId);
                response.Settings = _mapper.Map<EmployeeSettingsVm>(result);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
            }

            return response;
        }
    }
}