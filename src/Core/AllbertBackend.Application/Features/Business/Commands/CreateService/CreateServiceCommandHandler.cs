using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Application.Exceptions;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.CreateServiceCommand
{
    public class CreateServiceCommandHandler : IRequestHandler<CreateServiceCommand, CreateServiceCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;

        public CreateServiceCommandHandler(IBusinessRepository repository,IServiceRepository serviceRepository, IMapper mapper)
        {
            _repository = repository;
            _serviceRepository = serviceRepository;
            _mapper = mapper;
        }

        public async Task<CreateServiceCommandResponse> Handle(CreateServiceCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateServiceCommandResponse();

            var validator = new CreateServiceCommandValidator(_repository,_serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if (!response.Success)
            {
                return response;
            }

            try
            {
                request.Service.CreatedOn = DateTime.UtcNow;
                request.Service.Enabled = true;
                var result = await _serviceRepository.AddAsync(request.Service);
                response.Service = _mapper.Map<ServiceVm>(result);
            } catch (ItemNotFoundException e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                return response;
            }

            return response;
        }
    }
}
