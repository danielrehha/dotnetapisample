using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand
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
