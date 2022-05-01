using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery
{
    public class GetEmployeeScheduleListQueryValidator : AbstractValidator<GetEmployeeScheduleListQuery>
    {
        private readonly IBusinessRepository _repository;

        public GetEmployeeScheduleListQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }

        private async Task<bool> DoesBusinessExistAsync(GetEmployeeScheduleListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeScheduleQueryDto.BusinessId);
        }
    }
}
