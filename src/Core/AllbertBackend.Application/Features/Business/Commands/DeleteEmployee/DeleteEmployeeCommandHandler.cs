using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Appointment;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;

namespace AllbertBackend.Application.Features.Business.Commands.DeleteEmployeeCommand
{
    public class DeleteEmployeeCommandHandler : IRequestHandler<DeleteEmployeeCommand, DeleteEmployeeCommandResponse>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IBusinessRepository _businessRepository;
        private readonly IAppointmentRepository _appointmentRepository;

        public DeleteEmployeeCommandHandler(IEmployeeRepository employeeRepository, IBusinessRepository businessRepository, IAppointmentRepository appointmentRepository)
        {
            _employeeRepository = employeeRepository;
            _businessRepository = businessRepository;
            _appointmentRepository = appointmentRepository;
        }

        public async Task<DeleteEmployeeCommandResponse> Handle(DeleteEmployeeCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteEmployeeCommandResponse();

            var validator = new DeleteEmployeeCommandValidator(_employeeRepository, _businessRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            //await _appointmentRepository.RemoveEmployeeIdOnAppointments(request.EmployeeId);
            await _employeeRepository.DeleteAsync(request.EmployeeId);

            return response;
        }
    }
}
