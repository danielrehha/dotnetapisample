using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.ViewModels;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateEmployeeSettings
{
    public class UpdateEmployeeSettingsCommandHandler : IRequestHandler<UpdateEmployeeSettingsCommand, UpdateEmployeeSettingsCommandResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public UpdateEmployeeSettingsCommandHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<UpdateEmployeeSettingsCommandResponse> Handle(UpdateEmployeeSettingsCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateEmployeeSettingsCommandResponse();

            try
            {
                var result = await _repository.UpdateSettingsAsync(request.EmployeeId, request.Settings);
                response.Settings = _mapper.Map<EmployeeSettingsVm>(result);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
            }

            return response;
;        }
    }
}