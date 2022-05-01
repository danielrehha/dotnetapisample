using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.DeleteBookedTimeslot
{
    public class DeleteBookedTimeslotCommandValidator : AbstractValidator<DeleteBookedTimeslotCommand>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IAppointmentRepository _timeslotRepository;
        public DeleteBookedTimeslotCommandValidator(IEmployeeRepository employeeRepository, IAppointmentRepository timeslotRepository)
        {
            _employeeRepository = employeeRepository;
            _timeslotRepository = timeslotRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).MustAsync(DoesTimeslotExistAsync).WithMessage("The specified timeslot does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(DeleteBookedTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private async Task<bool> DoesTimeslotExistAsync(DeleteBookedTimeslotCommand e, CancellationToken token)
        {
            return await _timeslotRepository.DoesExistAsync(e.TimeslotId);
        }
    }
}
