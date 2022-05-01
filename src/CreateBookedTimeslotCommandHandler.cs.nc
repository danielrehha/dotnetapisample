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
namespace AllbertBackend.Application.Features.Employee.Commands.CreateBookedTimeslot
{
    public class CreateBookedTimeslotCommandHandler : IRequestHandler<CreateBookedTimeslotCommand, CreateBookedTimeslotCommandResponse>
    {
        private readonly IAppointmentRepository _timeslotRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IMapper _mapper;
        public CreateBookedTimeslotCommandHandler(IAppointmentRepository timeslotRepository, IEmployeeRepository employeeRepository, IMapper mapper, ICustomerRepository customerRepository)
        {
            _timeslotRepository = timeslotRepository;
            _employeeRepository = employeeRepository;
            _mapper = mapper;
            _customerRepository = customerRepository;
        }
        public async Task<CreateBookedTimeslotCommandResponse> Handle(CreateBookedTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateBookedTimeslotCommandResponse();
            var validator = new CreateBookedTimeslotCommandValidator(_timeslotRepository, _employeeRepository, _customerRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _timeslotRepository.AddAsync(request.Timeslot);
            response.Timeslot = _mapper.Map<AppointmentVm>(result);
            return response;
        }
    }
}
