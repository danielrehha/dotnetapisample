using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand
{
    public class CreateEmployeeCommandHandler : IRequestHandler<CreateEmployeeCommand, CreateEmployeeCommandResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;

        public CreateEmployeeCommandHandler(IEmployeeRepository repository, IBusinessRepository businessRepository,
            IMapper mapper, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _businessRepository = businessRepository;
            _mapper = mapper;
            _serviceRepository = serviceRepository;
        }

        public async Task<CreateEmployeeCommandResponse> Handle(CreateEmployeeCommand request,
            CancellationToken cancellationToken)
        {
            var response = new CreateEmployeeCommandResponse();

            var validator = new CreateEmployeeCommandValidator(_repository, _businessRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if (!response.Success)
            {
                return response;
            }

            var employee = new AllbertBackend.Domain.Entities.Employee
            {
                Id = request.EmployeeInfo.EmployeeId,
                BusinessId = request.BusinessId,
                EmployeeInfo = request.EmployeeInfo,
                CreatedOn = DateTime.UtcNow,
                Enabled = true,
                Settings = EmployeeSettings.Default(request.EmployeeInfo.EmployeeId),
            };

            try
            {
                var result = await _repository.AddAsync(employee);
                response.Employee = _mapper.Map<EmployeeVm>(result);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
                return response;
            }

            return response;
        }
    }
}