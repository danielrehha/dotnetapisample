using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateAvailableTimeslot
{
    public class UpdateAvailableTimeslotCommandValidator : AbstractValidator<UpdateAvailableTimeslotCommand>
    {
        private readonly IAvailableTimeslotRepository _timeslotRepository;
        private readonly IEmployeeRepository _employeeRepository;
        public UpdateAvailableTimeslotCommandValidator(IAvailableTimeslotRepository timeslotRepository, IEmployeeRepository employeeRepository)
        {
            _timeslotRepository = timeslotRepository;
            _employeeRepository = employeeRepository;
            RuleFor(e => e).MustAsync(DoesTimeslotExistAsync).WithMessage("The specified timeslot does not exists.");
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).Must(DoesGuidMatch).WithMessage("The EmployeeId specified in the URL does not match the provided data.");
            RuleFor(e => e).Must(DoesTimeslotGuidMatch).WithMessage("The TimeslotId specified in the URL does not match the provided data.");
        }
        private async Task<bool> DoesTimeslotExistAsync(UpdateAvailableTimeslotCommand e, CancellationToken token)
        {
            return await _timeslotRepository.DoesExistAsync(e.Timeslot.Id);
        }
        private async Task<bool> DoesEmployeeExistAsync(UpdateAvailableTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private bool DoesGuidMatch(UpdateAvailableTimeslotCommand e)
        {
            return (e.EmployeeId == e.Timeslot.EmployeeId);
        }
        private bool DoesTimeslotGuidMatch(UpdateAvailableTimeslotCommand e)
        {
            return (e.TimeslotId == e.Timeslot.Id);
        }
    }
}
