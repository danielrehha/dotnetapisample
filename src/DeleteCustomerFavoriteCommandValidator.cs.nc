using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Commands.DeleteCustomerFavorite
{
    public class DeleteCustomerFavoriteCommandValidator : AbstractValidator<DeleteCustomerFavoriteCommand>
    {
        private readonly ICustomerRepository _repository;
        public DeleteCustomerFavoriteCommandValidator(ICustomerRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
            RuleFor(e => e).MustAsync(DoesCustomerFavoriteExistAsync).WithMessage("The specified customer favorite does not exist.");
        }
        private async Task<bool> DoesCustomerExistAsync(DeleteCustomerFavoriteCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
        private async Task<bool> DoesCustomerFavoriteExistAsync(DeleteCustomerFavoriteCommand e, CancellationToken token)
        {
            return await _repository.DoesCustomerFavoriteExistAsync(e.CustomerId,e.EntityId, e.EntityType);
        }
    }
}
