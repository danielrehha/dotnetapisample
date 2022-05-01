using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery
{
    public class GetEmployeeListQueryValidator : AbstractValidator<GetEmployeeListQuery>
    {
        private readonly IBusinessRepository _repository;

        public GetEmployeeListQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }

        private async Task<bool> DoesBusinessExistAsync(GetEmployeeListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessId);
        }
    }
}
