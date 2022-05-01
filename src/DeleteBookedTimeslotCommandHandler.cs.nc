using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.DeleteBookedTimeslot
{
    public class DeleteBookedTimeslotCommandHandler : IRequestHandler<DeleteBookedTimeslotCommand, DeleteBookedTimeslotCommandResponse>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IAppointmentRepository _timeslotRepository;
        public DeleteBookedTimeslotCommandHandler(IEmployeeRepository employeeRepository, IAppointmentRepository timeslotRepository)
        {
            _employeeRepository = employeeRepository;
            _timeslotRepository = timeslotRepository;
        }
        public async Task<DeleteBookedTimeslotCommandResponse> Handle(DeleteBookedTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteBookedTimeslotCommandResponse();
            var validator = new DeleteBookedTimeslotCommandValidator(_employeeRepository, _timeslotRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            await _timeslotRepository.DeleteAsync(request.TimeslotId);
            return response;
        }
    }
}
