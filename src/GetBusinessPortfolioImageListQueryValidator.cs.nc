using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageList
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
