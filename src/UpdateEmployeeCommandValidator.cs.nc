using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployee
{
    public class UpdateEmployeeCommandValidator : AbstractValidator<UpdateEmployeeCommand>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        public UpdateEmployeeCommandValidator(IEmployeeRepository repository, IBusinessRepository businessRepository, IServiceRepository serviceRepository)
        {
            _repository = repository;
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            RuleFor(e => e).MustAsync(DoesExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).Must(DoesGuidMatch).WithMessage("Employee GUID from URL does not match EmployeeInfo's data.");
            RuleFor(e => e).MustAsync(DoServicesExistAsync).WithMessage("One or multiple of the specified services do not exist.");
            RuleFor(e => e).Must(DoesServicesGuidMatch).WithMessage("One or multiple instances of the specified EmployeeServices does not match the EmployeeId");
        }
        private async Task<bool> DoesExistAsync(UpdateEmployeeCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeInfo.EmployeeId);
        }
        private bool DoesGuidMatch(UpdateEmployeeCommand e)
        {
            return (e.EmployeeId == e.EmployeeInfo.EmployeeId);
        }
        private async Task<bool> DoServicesExistAsync(UpdateEmployeeCommand e, CancellationToken token)
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
        private bool DoesServicesGuidMatch(UpdateEmployeeCommand e)
        {
            bool result = true;
            if (e.EmployeeInfo.Services == null)
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
