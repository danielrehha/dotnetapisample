using System;
using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateServiceCommand
{
    public class UpdateServiceCommandHandler : IRequestHandler<UpdateServiceCommand, UpdateServiceCommandResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IMapper _mapper;

        public UpdateServiceCommandHandler(IBusinessRepository businessRepository, IServiceRepository serviceRepository,
            IMapper mapper)
        {
            _businessRepository = businessRepository;
            _serviceRepository = serviceRepository;
            _mapper = mapper;
        }

        public async Task<UpdateServiceCommandResponse> Handle(UpdateServiceCommand request,
            CancellationToken cancellationToken)
        {
            var response = new UpdateServiceCommandResponse();

            var validator = new UpdateServiceCommandValidator(_businessRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if (!response.Success)
            {
                return response;
            }

            try
            {
                var result = await _serviceRepository.UpdateAsync(request.Service.Id, request.Service);
                response.Service = _mapper.Map<ServiceVm>(result);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
            }

            return response;
        }
    }
}