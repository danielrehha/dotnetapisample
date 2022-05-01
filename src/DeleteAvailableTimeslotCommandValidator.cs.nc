using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.DeleteAvailableTimeslot
{
    public class DeleteAvailableTimeslotCommandValidator : AbstractValidator<DeleteAvailableTimeslotCommand>
    {
        private readonly IAvailableTimeslotRepository _timeslotRepository;
        private readonly IEmployeeRepository _employeeRepository;
        public DeleteAvailableTimeslotCommandValidator(IAvailableTimeslotRepository timeslotRepository, IEmployeeRepository employeeRepository)
        {
            _timeslotRepository = timeslotRepository;
            _employeeRepository = employeeRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).MustAsync(DoesTimeslotExistAsync).WithMessage("The specified timeslot does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(DeleteAvailableTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private async Task<bool> DoesTimeslotExistAsync(DeleteAvailableTimeslotCommand e, CancellationToken token)
        {
            return await _timeslotRepository.DoesExistAsync(e.TimeslotId);
        }
    }
}
