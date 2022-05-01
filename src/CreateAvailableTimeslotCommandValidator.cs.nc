using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateAvailableTimeslot
{
    public class CreateAvailableTimeslotCommandValidator : AbstractValidator<CreateAvailableTimeslotCommand>
    {
        private readonly IAvailableTimeslotRepository _repository;
        private readonly IEmployeeRepository _employeeRepository;
        public CreateAvailableTimeslotCommandValidator(IAvailableTimeslotRepository repository, IEmployeeRepository employeeRepository)
        {
            _repository = repository;
            _employeeRepository = employeeRepository;
            RuleFor(e => e).MustAsync(IsTimeslotClashing).WithMessage("The attempted timeslot is clashing with an existing timeslot.");
            RuleFor(e => e).MustAsync(DoesTimeslotExistAsync).WithMessage("The specified timeslot with GUID already exists.");
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).Must(DoesGuidMatch).WithMessage("The GUID specified in the URL does not match the provided data.");
        }
        private async Task<bool> IsTimeslotClashing(CreateAvailableTimeslotCommand e, CancellationToken token)
        {
            return await Task.FromResult(true);
        }
        private async Task<bool> DoesTimeslotExistAsync(CreateAvailableTimeslotCommand e, CancellationToken token)
        {
            return !await _repository.DoesExistAsync(e.Timeslot.Id);
        }
        private async Task<bool> DoesEmployeeExistAsync(CreateAvailableTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private bool DoesGuidMatch(CreateAvailableTimeslotCommand e)
        {
            return (e.EmployeeId == e.Timeslot.EmployeeId);
        }
    }
}
