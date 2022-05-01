using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServiceListQuery
{
    public class EmployeeServiceListQueryValidator : AbstractValidator<EmployeeServiceListQuery>
    {
        private readonly IEmployeeRepository _repository;

        public EmployeeServiceListQueryValidator(IEmployeeRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesEmployeeExistAsync(EmployeeServiceListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}