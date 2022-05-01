using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Domain.Enums;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateEntityStatus
{
    public class UpdateEntityStatusCommandHandler : IRequestHandler<UpdateEntityStatusCommand, UpdateEntityStatusCommandResponse>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IServiceRepository _serviceRepository;

        public UpdateEntityStatusCommandHandler(IEmployeeRepository employeeRepository, IServiceRepository serviceRepository)
        {
            _employeeRepository = employeeRepository;
            _serviceRepository = serviceRepository;
        }

        public async Task<UpdateEntityStatusCommandResponse> Handle(UpdateEntityStatusCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateEntityStatusCommandResponse();

            if (request.EntityType == EntityType.Employee)
            {
                try
                {
                    await _employeeRepository.UpdateStatusAsync(request.EntityId, request.EntityStatus);
                }
                catch (Exception e)
                {
                    response.Success = false;
                    response.ErrorMessage = e.Message;
                    response.HadErrors = true;
                }
            }

            if (request.EntityType == EntityType.Service)
            {
                try
                {
                    await _serviceRepository.UpdateStatusAsync(request.EntityId, request.EntityStatus);
                }
                catch (Exception e)
                {
                    response.Success = false;
                    response.ErrorMessage = e.Message;
                    response.HadErrors = true;
                }
            }
            
            return response;
        }
    }
}