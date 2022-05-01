using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateBookedTimeslot
{
    public class UpdateBookedTimeslotCommandValidator : AbstractValidator<UpdateBookedTimeslotCommand>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IAppointmentRepository _timeslotRepository;
        public UpdateBookedTimeslotCommandValidator(IEmployeeRepository employeeRepository, IAppointmentRepository timeslotRepository)
        {
            _employeeRepository = employeeRepository;
            _timeslotRepository = timeslotRepository;
            RuleFor(e => e).Must(DoesEmployeeGuidMatch).WithMessage("Employee Id's do not match.");
            RuleFor(e => e).Must(DoesTimeslotGuidMatch).WithMessage("Timeslot Id's do not match.");
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
            RuleFor(e => e).MustAsync(DoesTimeslotExistAsync).WithMessage("The specified timeslot does not exist.");
        }
        private async Task<bool> DoesTimeslotExistAsync(UpdateBookedTimeslotCommand e, CancellationToken token)
        {
            return await _timeslotRepository.DoesExistAsync(e.TimeslotId);
        }
        private async Task<bool> DoesEmployeeExistAsync(UpdateBookedTimeslotCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
        private bool DoesEmployeeGuidMatch(UpdateBookedTimeslotCommand e)
        {
            return e.EmployeeId == e.BookedTimeslot.EmployeeId;
        }
        private bool DoesTimeslotGuidMatch(UpdateBookedTimeslotCommand e)
        {
            return e.TimeslotId == e.BookedTimeslot.Id;
        }
    }
}
