using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateService
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
                request.Service.ModifiedOn = DateTime.UtcNow;
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
