using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery
{
    public class GetScheduleQueryValidator : AbstractValidator<GetScheduleQuery>
    {
        private IBusinessRepository _repository;

        public GetScheduleQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }

        private async Task<bool> DoesBusinessExistAsync(GetScheduleQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessId);
        }
    }
}