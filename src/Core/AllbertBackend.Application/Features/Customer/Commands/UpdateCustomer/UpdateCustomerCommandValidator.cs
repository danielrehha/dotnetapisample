using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;

namespace AllbertBackend.Application.Features.Customer.Commands.UpdateCustomerCommand
{
    public class UpdateCustomerCommandValidator : AbstractValidator<UpdateCustomerCommand>
    {
        private readonly ICustomerRepository _repository;

        public UpdateCustomerCommandValidator(ICustomerRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).Must(DoesGuidMatch).WithMessage("The specified GUID in the URL does not match the provided data.");
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }

        private async Task<bool> DoesCustomerExistAsync(UpdateCustomerCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }

        private bool DoesGuidMatch(UpdateCustomerCommand e)
        {
            return e.CustomerId == e.CustomerInfo.CustomerId;
        }
    }
}