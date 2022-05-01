using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Employee;

namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand
{
    public class CreateEmployeeCommandValidator : AbstractValidator<CreateEmployeeCommand>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;

        public CreateEmployeeCommandValidator(IEmployeeRepository repository, IBusinessRepository businessRepository, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;

            RuleFor(e => e).MustAsync(DoesExistAsync).WithMessage("Employee with specified GUID was already created.");
            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The business specified in the URL does not exist.");
            RuleFor(e => e).MustAsync(DoServicesExistAsync).WithMessage("One or multiple of the specified services do not exist.");
            RuleFor(e => e).Must(DoesServicesGuidMatch).WithMessage("One or multiple instances of the specified EmployeeServices does not match the EmployeeId");
        }

        private async Task<bool> DoesExistAsync(CreateEmployeeCommand e, CancellationToken token)
        {
            return !await _repository.DoesExistAsync(e.EmployeeInfo.EmployeeId);
        }

        private async Task<bool> DoesBusinessExistAsync(CreateEmployeeCommand e, CancellationToken token)
        {
            return await _businessRepository.DoesExistAsync(e.BusinessId);
        }

        private async Task<bool> DoServicesExistAsync(CreateEmployeeCommand e, CancellationToken token)
        {
            bool result = true;
            if (e.EmployeeInfo.Services == null)
            {
                return result;
            }
            foreach (var service in e.EmployeeInfo.Services)
            {
                result = await _serviceRepository.DoesExistAsync(service.ServiceId);
            }
            return result;
        }

        private bool DoesServicesGuidMatch(CreateEmployeeCommand e)
        {
            bool result = true;
            if(e.EmployeeInfo.Services == null)
            {
                return result;
            }
            foreach (var service in e.EmployeeInfo.Services)
            {
                result = (e.EmployeeInfo.EmployeeId == service.EmployeeId);
            }
            return result;
        }
    }
}
