using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerFavoriteCommand
{
    public class CreateCustomerFavoriteCommandValidator : AbstractValidator<CreateCustomerFavoriteCommand>
    {
        private readonly ICustomerRepository _repository;

        public CreateCustomerFavoriteCommandValidator(ICustomerRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesCustomerExistAsync(CreateCustomerFavoriteCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
    }
}