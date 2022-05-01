using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfo
{
    public class GetCustomerInfoQueryValidator : AbstractValidator<GetCustomerInfoQuery>
    {
        private ICustomerRepository _repository;
        public GetCustomerInfoQueryValidator(ICustomerRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }
        private async Task<bool> DoesCustomerExistAsync(GetCustomerInfoQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
    }
}
