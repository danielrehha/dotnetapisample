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
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateBookedTimeslot
{
    public class UpdateBookedTimeslotCommandHandler : IRequestHandler<UpdateBookedTimeslotCommand, UpdateBookedTimeslotCommandResponse>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IAppointmentRepository _timeslotRepository;
        private readonly IMapper _mapper;
        public UpdateBookedTimeslotCommandHandler(IEmployeeRepository employeeRepository, IAppointmentRepository timeslotRepository, IMapper mapper)
        {
            _employeeRepository = employeeRepository;
            _timeslotRepository = timeslotRepository;
            _mapper = mapper;
        }
        public async Task<UpdateBookedTimeslotCommandResponse> Handle(UpdateBookedTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBookedTimeslotCommandResponse();
            var validator = new UpdateBookedTimeslotCommandValidator(_employeeRepository, _timeslotRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _timeslotRepository.UpdateAsync(request.TimeslotId, request.BookedTimeslot);
            response.Timeslot = _mapper.Map<AppointmentVm>(result);
            return response;
        }
    }
}
