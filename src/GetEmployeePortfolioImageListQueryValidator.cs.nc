using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageList
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
