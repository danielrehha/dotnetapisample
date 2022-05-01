using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Commands.DeleteServiceCommand
{
    public class DeleteServiceCommandValidator : AbstractValidator<DeleteServiceCommand>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        public DeleteServiceCommandValidator(IBusinessRepository businessRepository, IServiceRepository serviceRepository)
        {
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;

            RuleFor(e => e).MustAsync(DoesServiceExistAsync).WithMessage("The specified service does not exist.");
        }

        private async Task<bool> DoesServiceExistAsync(DeleteServiceCommand e, CancellationToken token)
        {
            return await _serviceRepository.DoesExistAsync(e.ServiceId);
        }
    }
}
