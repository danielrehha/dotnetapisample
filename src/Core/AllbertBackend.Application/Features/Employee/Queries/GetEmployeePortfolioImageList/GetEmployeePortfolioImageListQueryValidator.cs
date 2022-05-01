using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageListQuery
{
    public class GetEmployeePortfolioImageListQueryValidator : AbstractValidator<GetEmployeePortfolioImageListQuery>
    {
        private readonly IEmployeeRepository _repository;
        public GetEmployeePortfolioImageListQueryValidator(IEmployeeRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesEmployeeExistAsync(GetEmployeePortfolioImageListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}