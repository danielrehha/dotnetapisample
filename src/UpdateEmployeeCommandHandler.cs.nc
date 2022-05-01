using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployee
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
