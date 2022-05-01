using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels.Business;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateDetails
{
    public class UpdateBusinessDetailsCommandHandler : IRequestHandler<UpdateBusinessDetailsCommand, UpdateBusinessDetailsCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public UpdateBusinessDetailsCommandHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<UpdateBusinessDetailsCommandResponse> Handle(UpdateBusinessDetailsCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBusinessDetailsCommandResponse();

            try
            {
                var result= await _repository.UpdateBusinessDetailsAsync(request.BusinessId, request.Details);
                response.Details = _mapper.Map<BusinessDetailsVm>(result);
            }
            catch (Exception e)
            {
                response.HadErrors = true;
                response.Success = false;
                response.ErrorMessage = e.Message;
            }

            return response;
        }
    }
}