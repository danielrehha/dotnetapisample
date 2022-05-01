using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListAsync
{
    public class GetBusinessAppointmentListQueryValidator : AbstractValidator<GetBusinessAppointmentListQuery>
    {
        private readonly IBusinessRepository _repository;
        public GetBusinessAppointmentListQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }
        private async Task<bool> DoesBusinessExistAsync(GetBusinessAppointmentListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessId);
        }
    }
}
