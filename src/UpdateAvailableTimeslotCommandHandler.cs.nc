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
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateAvailableTimeslot
{
    public class UpdateAvailableTimeslotCommandHandler : IRequestHandler<UpdateAvailableTimeslotCommand, UpdateAvailableTimeslotCommandResponse>
    {
        private readonly IAvailableTimeslotRepository _timeslotRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IMapper _mapper;
        public UpdateAvailableTimeslotCommandHandler(IAvailableTimeslotRepository timeslotRepository, IEmployeeRepository employeeRepository, IMapper mapper)
        {
            _timeslotRepository = timeslotRepository;
            _employeeRepository = employeeRepository;
            _mapper = mapper;
        }
        public async Task<UpdateAvailableTimeslotCommandResponse> Handle(UpdateAvailableTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateAvailableTimeslotCommandResponse();
            var validator = new UpdateAvailableTimeslotCommandValidator(_timeslotRepository, _employeeRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _timeslotRepository.UpdateAsync(request.Timeslot.Id, request.Timeslot);
            response.Timeslot = _mapper.Map<AvailableTimeslotVm>(result);
            return response;
        }
    }
}
