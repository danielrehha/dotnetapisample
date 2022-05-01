using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.BanCustomerCommand
{
    public class BanCustomerCommandHandler : IRequestHandler<BanCustomerCommand, BanCustomerCommandResponse>
    {
        private readonly IBusinessRepository _repository;

        public BanCustomerCommandHandler(IBusinessRepository repository)
        {
            _repository = repository;
        }

        public async Task<BanCustomerCommandResponse> Handle(BanCustomerCommand request, CancellationToken cancellationToken)
        {
            var response = new BanCustomerCommandResponse();

            try
            {
                await _repository.BanCustomerAsync(request.BusinessId, request.CustomerId);
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