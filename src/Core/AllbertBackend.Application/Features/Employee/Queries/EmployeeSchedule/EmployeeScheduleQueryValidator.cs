using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeScheduleQuery
{
    public class EmployeeScheduleQueryValidator : AbstractValidator<EmployeeScheduleQuery>
    {
        private readonly IEmployeeRepository _employeeRepository;

        public EmployeeScheduleQueryValidator(IEmployeeRepository employeeRepository)
        {
            _employeeRepository = employeeRepository;

            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesEmployeeExistAsync(EmployeeScheduleQuery e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
    }
}
