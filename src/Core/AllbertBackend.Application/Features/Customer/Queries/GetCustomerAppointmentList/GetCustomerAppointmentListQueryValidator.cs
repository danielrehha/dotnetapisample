using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery
{
    public class GetCustomerAppointmentListQueryValidator : AbstractValidator<GetCustomerAppointmentListQuery>
    {
        private ICustomerRepository _repository;

        public GetCustomerAppointmentListQueryValidator(ICustomerRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
        }

        private async Task<bool> DoesCustomerExistAsync(GetCustomerAppointmentListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.CustomerId);
        }
    }
}