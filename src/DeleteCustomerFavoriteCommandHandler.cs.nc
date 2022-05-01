using AllbertBackend.Application.Contracts.Persistence;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Commands.DeleteCustomerFavorite
{
    public class DeleteCustomerFavoriteCommandHandler : IRequestHandler<DeleteCustomerFavoriteCommand, DeleteCustomerFavoriteCommandResponse>
    {
        private readonly ICustomerRepository _repository;
        public DeleteCustomerFavoriteCommandHandler(ICustomerRepository repository)
        {
            _repository = repository;
        }
        public async Task<DeleteCustomerFavoriteCommandResponse> Handle(DeleteCustomerFavoriteCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteCustomerFavoriteCommandResponse();
            var validator = new DeleteCustomerFavoriteCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            await _repository.DeleteCustomerFavoriteAsync(request.CustomerId, request.EntityId, request.EntityType);
            return response;
        }
    }
}
