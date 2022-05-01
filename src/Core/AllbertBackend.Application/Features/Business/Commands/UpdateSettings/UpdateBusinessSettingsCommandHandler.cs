using System.Threading;
using System.Threading.Tasks;
using MediatR;
using System;
using AllbertBackend.Application.Contracts.Persistence.Business;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateSettingsCommand
{
    public class UpdateBusinessSettingsCommandHandler : IRequestHandler<UpdateBusinessSettingsCommand, UpdateBusinessSettingsCommandResponse>
    {
        private readonly IBusinessRepository _repository;

        public UpdateBusinessSettingsCommandHandler(IBusinessRepository repository)
        {
            _repository = repository;
        }

        public async Task<UpdateBusinessSettingsCommandResponse> Handle(UpdateBusinessSettingsCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateBusinessSettingsCommandResponse();

            try
            {
                var result = await _repository.UpdateBusinessSettingsAsync(request.BusinessId, request.BusinessSettings);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
                return response;
            }

            return response;
        }
    }
}