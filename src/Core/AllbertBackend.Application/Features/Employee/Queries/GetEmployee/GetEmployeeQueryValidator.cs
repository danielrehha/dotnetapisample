using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeQuery
{
    public class GetEmployeeQueryValidator : AbstractValidator<GetEmployeeQuery>
    {
        private IEmployeeRepository _repository;

        public GetEmployeeQueryValidator(IEmployeeRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesEmployeeExistAsync(GetEmployeeQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}