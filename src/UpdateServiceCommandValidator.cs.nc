using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateService
{
    public class UpdateServiceCommandValidator : AbstractValidator<UpdateServiceCommand>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        public UpdateServiceCommandValidator(IBusinessRepository businessRepository, IServiceRepository serviceRepository)
        {
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            RuleFor(e => e).MustAsync(DoesServiceExistAsync).WithMessage("The specified service does not exist.");
            RuleFor(e => e).Must(DoesGuidMatchData).WithMessage("The GUID specified in the URL does not match the provided data.");
            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }
        private async Task<bool> DoesBusinessExistAsync(UpdateServiceCommand e, CancellationToken token)
        {
            return await _businessRepository.DoesExistAsync(e.Service.BusinessId);
        }
        private async Task<bool> DoesServiceExistAsync(UpdateServiceCommand e, CancellationToken token)
        {
            return await _serviceRepository.DoesExistAsync(e.Service.Id);
        }
        private bool DoesGuidMatchData(UpdateServiceCommand e)
        {
            return (e.ServiceId == e.Service.Id);
        }
    }
}
