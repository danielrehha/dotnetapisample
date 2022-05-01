using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Commands.DeleteAppointment
{
    public class UpdateAppointmentStatusCommandHandler : IRequestHandler<UpdateStatusAppointmentCommand, UpdateAppointmentStatusCommandResponse>
    {
        private readonly IAppointmentRepository _repository;
        public UpdateAppointmentStatusCommandHandler(IAppointmentRepository repository)
        {
            _repository = repository;
        }
        public async Task<UpdateAppointmentStatusCommandResponse> Handle(UpdateStatusAppointmentCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateAppointmentStatusCommandResponse();
            var validator = new UpdateAppointmentStatusCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var appointment = await _repository.SetAppointmentStatusAsync(request.AppointmentId, request.Status);
            if(appointment == null)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = "Could not find appointment";
                return response;
            }
            return response;
        }
    }
}
