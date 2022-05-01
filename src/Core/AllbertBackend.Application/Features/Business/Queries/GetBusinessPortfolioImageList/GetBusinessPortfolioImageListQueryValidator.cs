using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageListQuery
{
    public class GetBusinessPortfolioImageListQueryValidator : AbstractValidator<GetBusinessPortfolioImageListQuery>
    {
        private readonly IBusinessRepository _repository;

        public GetBusinessPortfolioImageListQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }

        private async Task<bool> DoesBusinessExistAsync(GetBusinessPortfolioImageListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessId);
        }
    }
}
