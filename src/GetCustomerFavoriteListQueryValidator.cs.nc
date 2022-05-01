using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteList
{
    public class GetCustomerFavoriteListQueryValidator : AbstractValidator<GetCustomerFavoriteListQuery>
    {
        private ICustomerRepository _repository;
        public GetCustomerFavoriteListQueryValidator(ICustomerRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }
        private async Task<bool> DoesCustomerExistAsync(GetCustomerFavoriteListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
    }
}
