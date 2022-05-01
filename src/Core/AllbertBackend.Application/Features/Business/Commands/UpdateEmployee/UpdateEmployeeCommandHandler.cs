using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployeeCommand
{
    public class UpdateEmployeeCommandHandler : IRequestHandler<UpdateEmployeeCommand, UpdateEmployeeCommandResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;

        public UpdateEmployeeCommandHandler(IEmployeeRepository repository, IMapper mapper, IBusinessRepository businessRepository, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            _mapper = mapper;
        }

        public async Task<UpdateEmployeeCommandResponse> Handle(UpdateEmployeeCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateEmployeeCommandResponse();

            var validator = new UpdateEmployeeCommandValidator(_repository, _businessRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.UpdateEmployeeInfoAsync(request.EmployeeInfo);

            if(result == null)
            {
                response.Success = false;
                response.ErrorMessage = "EmployeeInfo returned null from repository.";
                return response;
            }

            response.EmployeeInfo = _mapper.Map<EmployeeInfoVm>(result);

            return response;
        }
    }
}
