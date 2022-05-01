using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels.Business;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateContact
{
    public class UpdateBusinessContactCommandHandler : IRequestHandler<UpdateBusinessContactCommand, UpdateBusinessContactCommandResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public UpdateBusinessContactCommandHandler(IMapper mapper, IBusinessRepository repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public async Task<UpdateBusinessContactCommandResponse> Handle(UpdateBusinessContactCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBusinessContactCommandResponse();

            try
            {
                var result = await _repository.UpdateBusinessContactAsync(request.BusinessId, request.Contact);
                response.Contact = _mapper.Map<BusinessContactVm>(result);
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