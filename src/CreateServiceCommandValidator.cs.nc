using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateService
{
    public class CreateServiceCommandValidator : AbstractValidator<CreateServiceCommand>
    {
        private readonly IBusinessRepository _repository;
        private readonly IServiceRepository _serviceRepository;
        public CreateServiceCommandValidator(IBusinessRepository repository, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _serviceRepository = serviceRepository;
            RuleFor(e => e).MustAsync(DoesServiceExistAsync).WithMessage("The specified service already exists.");
            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business in the request does not exist.");
        }
        private async Task<bool> DoesBusinessExistAsync(CreateServiceCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.Service.BusinessId);
        }
        private async Task<bool> DoesServiceExistAsync(CreateServiceCommand e, CancellationToken token)
        {
            return !await _serviceRepository.DoesExistAsync(e.Service.Id);
        }
    }
}
