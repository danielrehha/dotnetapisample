using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomer
{
    public class CreateCustomerCommandValidator : AbstractValidator<CreateCustomerCommand>
    {
        private readonly ICustomerRepository _repository;
        public CreateCustomerCommandValidator(ICustomerRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer already exists [GUID].");
            RuleFor(e => e).MustAsync(DoesCustomerExistByFirebaseUidAsync).WithMessage("The specified customer already exists [FirebaseUid].");
        }
        private async Task<bool> DoesCustomerExistAsync(CreateCustomerCommand e, CancellationToken token)
        {
            return !await _repository.DoesExistAsync(e.CustomerInfo.CustomerId);
        }
        private async Task<bool> DoesCustomerExistByFirebaseUidAsync(CreateCustomerCommand e, CancellationToken token)
        {
            return !await _repository.DoesExistByFirebaseUidAsync(e.FirebaseUid);
        }
    }
}
