using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateSchedule
{
    public class UpdateScheduleCommandValidator : AbstractValidator<UpdateScheduleCommand>
    {
        private readonly IEmployeeRepository _repository;
        public UpdateScheduleCommandValidator(IEmployeeRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(UpdateScheduleCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}
