using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateService
{
    public class UpdateServiceCommandHandler : IRequestHandler<UpdateServiceCommand, UpdateServiceCommandResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;
        public UpdateServiceCommandHandler(IBusinessRepository businessRepository, IServiceRepository serviceRepository, IMapper mapper)
        {
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            _mapper = mapper;
        }
        public async Task<UpdateServiceCommandResponse> Handle(UpdateServiceCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateServiceCommandResponse();
            var validator = new UpdateServiceCommandValidator(_businessRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _serviceRepository.UpdateAsync(request.Service.Id, request.Service);
            response.Service = _mapper.Map<ServiceVm>(result);
            return response;
        }
    }
}
