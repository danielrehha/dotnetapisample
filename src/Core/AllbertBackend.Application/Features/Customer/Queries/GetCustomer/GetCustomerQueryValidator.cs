using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerQuery
{
    public class GetCustomerQueryValidator : AbstractValidator<GetCustomerQuery>
    {
        private readonly ICustomerRepository _repository;

        public GetCustomerQueryValidator(ICustomerRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }

        private async Task<bool> DoesCustomerExistAsync(GetCustomerQuery e, CancellationToken token)
        {
            return await _repository.DoesExistByFirebaseUidAsync(e.FirebaseUid);
      }
    }
}
