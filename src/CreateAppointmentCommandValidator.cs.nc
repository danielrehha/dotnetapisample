using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Commands.CreateAppointment
{
    internal class CreateAppointmentCommandValidator : AbstractValidator<CreateAppointmentCommand>
    {
        private ICustomerRepository _customerRepository;
        private IEmployeeRepository _employeeRepository;
        private readonly IServiceRepository _serviceRepository;
        public CreateAppointmentCommandValidator(ICustomerRepository customerRepository, IEmployeeRepository employeeRepository, IServiceRepository serviceRepository)
        {
            _customerRepository = customerRepository;
            _employeeRepository = employeeRepository;
            _serviceRepository = serviceRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
            RuleFor(e => e).MustAsync(DoesServiceExistAsync).WithMessage("The specified service does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(CreateAppointmentCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync((System.Guid)e.Appointment.EmployeeId);
        }
        private async Task<bool> DoesCustomerExistAsync(CreateAppointmentCommand e, CancellationToken token)
        {
            return await _customerRepository.DoesExistAsync((System.Guid)e.Appointment.CustomerId);
        }
        private async Task<bool> DoesServiceExistAsync(CreateAppointmentCommand e, CancellationToken token)
        {
            return await _serviceRepository.DoesExistAsync((System.Guid)e.Appointment.ServiceId);
        }
    }
}
