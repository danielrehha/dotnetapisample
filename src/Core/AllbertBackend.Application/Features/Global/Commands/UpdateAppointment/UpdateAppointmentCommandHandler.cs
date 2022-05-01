using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Appointment;
using MediatR;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointment
{
    public class
        UpdateAppointmentCommandHandler : IRequestHandler<UpdateAppointmentCommand, UpdateAppointmentCommandResponse>
    {
        private readonly IAppointmentRepository _repository;

        public UpdateAppointmentCommandHandler(IAppointmentRepository repository)
        {
            _repository = repository;
        }

        public async Task<UpdateAppointmentCommandResponse> Handle(UpdateAppointmentCommand request,
            CancellationToken cancellationToken)
        {
            var response = new UpdateAppointmentCommandResponse();

            try
            {
                var oldAppointment = await _repository.GetByIdAsync(request.Id);
                if (oldAppointment == null)
                {
                    throw new NullReferenceException("Old appointment state not found.");
                }

                if (oldAppointment.StartDate < DateTime.UtcNow)
                {
                    response.ErrorMessage = "Past appointments cannot be modified.";
                    response.Success = false;
                    return response;
                }
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
                return response;
            }

            if (request.Appointment.StartDate < DateTime.UtcNow)
            {
                response.ErrorMessage = "Past appointments are not allowed.";
                response.Success = false;
                return response;
            }

            try
            {
                await _repository.UpdateAsync(request.Id, request.Appointment);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
            }

            return response;
        }
    }
}