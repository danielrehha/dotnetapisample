using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Employee.Queries.ServiceStartTimeListQuery
{
    public class ServiceStartTimeListQueryValidator : AbstractValidator<ServiceStartTimeListQuery>
    {
        private readonly IEmployeeRepository _repository;

        public ServiceStartTimeListQueryValidator(IEmployeeRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }

        private async Task<bool> DoesEmployeeExistAsync(ServiceStartTimeListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}