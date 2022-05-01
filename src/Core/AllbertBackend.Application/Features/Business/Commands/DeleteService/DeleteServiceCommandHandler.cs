using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Appointment;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;


namespace AllbertBackend.Application.Features.Business.Commands.DeleteServiceCommand
{
    public class DeleteServiceCommandHandler : IRequestHandler<DeleteServiceCommand, DeleteServiceCommandResponse>
    {
        private readonly IAppointmentRepository _appointmentRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IBusinessRepository _businessRepository;

        public DeleteServiceCommandHandler(IBusinessRepository businessRepository, IServiceRepository serviceRepository, IAppointmentRepository appointmentRepository)
        {
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            _appointmentRepository = appointmentRepository;
        }

        public async Task<DeleteServiceCommandResponse> Handle(DeleteServiceCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteServiceCommandResponse();

            var validator = new DeleteServiceCommandValidator(_businessRepository,_serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            //await _appointmentRepository.RemoveServiceIdOnAppointments(request.ServiceId);
            await _serviceRepository.DeleteAsync(request.ServiceId);

            return response;
        }
    }
}
