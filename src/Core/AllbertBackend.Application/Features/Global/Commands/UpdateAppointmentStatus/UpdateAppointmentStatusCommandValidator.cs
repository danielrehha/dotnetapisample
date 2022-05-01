using FluentValidation;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Appointment;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatusCommand

{
    public class UpdateAppointmentStatusCommandValidator : AbstractValidator<UpdateStatusAppointmentCommand>
    {
        private readonly IAppointmentRepository _repository;

        public UpdateAppointmentStatusCommandValidator(IAppointmentRepository repository)
        {
            _repository = repository;

            RuleFor(e => e).MustAsync(DoesAppointmentExistAsync).WithMessage("The specified appointment does not exist.");
            RuleFor(e => e).MustAsync(IsStatusAlreadySet).WithMessage("The specified status is already set.");
        }

        private async Task<bool> DoesAppointmentExistAsync(UpdateStatusAppointmentCommand e, CancellationToken token)
        {
            var result = await _repository.DoesExistAsync(e.AppointmentId);
            return result;
        }

        private async Task<bool> IsStatusAlreadySet(UpdateStatusAppointmentCommand e, CancellationToken token)
        {
            return !await _repository.IsStatusSet(e.AppointmentId, e.Status);
        }
    }
}