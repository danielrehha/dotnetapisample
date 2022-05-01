using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList
{
    public class GetCustomerFavoriteGuidListQueryValidator : AbstractValidator<GetCustomerFavoriteGuidListQuery>
    {
        private readonly ICustomerRepository _repository;
        public GetCustomerFavoriteGuidListQueryValidator(ICustomerRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }
        private async Task<bool> DoesCustomerExistAsync(GetCustomerFavoriteGuidListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
    }
}
