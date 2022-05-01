using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.DeleteAvailableTimeslot
{
    public class DeleteAvailableTimeslotCommandHandler : IRequestHandler<DeleteAvailableTimeslotCommand, DeleteAvailableTimeslotCommandResponse>
    {
        private readonly IAvailableTimeslotRepository _timeslotRepository;
        private readonly IEmployeeRepository _employeeRepository;
        public DeleteAvailableTimeslotCommandHandler(IAvailableTimeslotRepository timeslotRepository, IEmployeeRepository employeeRepository)
        {
            _timeslotRepository = timeslotRepository;
            _employeeRepository = employeeRepository;
        }
        public async Task<DeleteAvailableTimeslotCommandResponse> Handle(DeleteAvailableTimeslotCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteAvailableTimeslotCommandResponse();
            var validator = new DeleteAvailableTimeslotCommandValidator(_timeslotRepository, _employeeRepository);
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
