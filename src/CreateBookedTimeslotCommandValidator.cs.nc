using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateBookedTimeslot
{
    public class CreateBookedTimeslotCommandValidator : AbstractValidator<CreateBookedTimeslotCommand>
    {
        private readonly IAppointmentRepository _repository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly ICustomerRepository _customerRepository;
        public CreateBookedTimeslotCommandValidator(IAppointmentRepository repository, IEmployeeRepository employeeRepository, ICustomerRepository customerRepository)
        {
            _repository = repository;
            _employeeRepository = employeeRepository;
            _customerRepository = customerRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).MustAsync(DoesCustomerExistAsync).WithMessage("The specified customer does not exist.");
            RuleFor(e => e).Must(DoesGuidMatch).WithMessage("The URL guid does not match the provided data.");
        }
        private async Task<bool> DoesEmployeeExistAsync(CreateBookedTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private async Task<bool> DoesCustomerExistAsync(CreateBookedTimeslotCommand e, CancellationToken token)
        {
            return await _customerRepository.DoesExistAsync(e.EmployeeId);
        }
        private bool DoesGuidMatch(CreateBookedTimeslotCommand e)
        {
            return e.EmployeeId == e.Timeslot.EmployeeId;
        }
    }
}
