using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployee
{
    public class CreateEmployeeCommandHandler : IRequestHandler<CreateEmployeeCommand, CreateEmployeeCommandResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;
        public CreateEmployeeCommandHandler(IEmployeeRepository repository, IBusinessRepository businessRepository, IMapper mapper, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _businessRepository = businessRepository;
            _mapper = mapper;
            _serviceRepository = serviceRepository;
        }
        public async Task<CreateEmployeeCommandResponse> Handle(CreateEmployeeCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateEmployeeCommandResponse();
            var validator = new CreateEmployeeCommandValidator(_repository, _businessRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var employee = new Domain.Entities.Employee
            {
                Id = request.EmployeeInfo.EmployeeId,
                BusinessId = request.BusinessId,
                EmployeeInfo = request.EmployeeInfo,
                CreatedOn = DateTime.UtcNow,
                ScheduleSettings = new Domain.Entities.EmployeeScheduleSettings()
                {
                    EmployeeId = request.EmployeeInfo.EmployeeId,
                    AllowedAppointmentDeletionDeadlineInHours = 1,
                    AllowedBookingFrequencyInMinutes = 30,
                },
            };
            var result = await _repository.AddAsync(employee);
            response.Employee = _mapper.Map<EmployeeVm>(result);
            return response;
        }
    }
}
