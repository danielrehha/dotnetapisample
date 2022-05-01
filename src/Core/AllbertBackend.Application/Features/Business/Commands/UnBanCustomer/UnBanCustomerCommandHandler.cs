using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.UnBanCustomerCommand
{
    public class UnBanCustomerCommandHandler : IRequestHandler<UnBanCustomerCommand, UnBanCustomerCommandResponse>
    {
        private readonly IBusinessRepository _repository;

        public UnBanCustomerCommandHandler(IBusinessRepository repository)
        {
            _repository = repository;
        }

        public async Task<UnBanCustomerCommandResponse> Handle(UnBanCustomerCommand request, CancellationToken cancellationToken)
        {
            var response = new UnBanCustomerCommandResponse();

            try
            {
                await _repository.UnBanCustomerAsync(request.BusinessId, request.CustomerId);
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