using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateAvailableTimeslot
{
    public class CreateAvailableTimeslotCommandHandler : IRequestHandler<CreateAvailableTimeslotCommand, CreateAvailableTimeslotCommandResponse>
    {
        private readonly IAvailableTimeslotRepository _repository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IMapper _mapper;
        public CreateAvailableTimeslotCommandHandler(IAvailableTimeslotRepository repository, IMapper mapper, IEmployeeRepository employeeRepository)
        {
            _repository = repository;
            _mapper = mapper;
            _employeeRepository = employeeRepository;
        }
        public async Task<CreateAvailableTimeslotCommandResponse> Handle(CreateAvailableTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateAvailableTimeslotCommandResponse();
            var validator = new CreateAvailableTimeslotCommandValidator(_repository, _employeeRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            request.Timeslot.CreatedOn = DateTime.UtcNow;
            var result = await _repository.AddAsync(request.Timeslot);
            response.Timeslot = _mapper.Map<AvailableTimeslotVm>(result);
            return response;
        }
    }
}
