using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Features.ResultResolver;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerFavoriteCommand
{
    public class CreateCustomerFavoriteCommandHandler : IRequestHandler<CreateCustomerFavoriteCommand, CreateCustomerFavoriteCommandResponse>
    {
        private readonly ICustomerRepository _repository;
        public CreateCustomerFavoriteCommandHandler(ICustomerRepository repository)
        {
            _repository = repository;
        }
        public async Task<CreateCustomerFavoriteCommandResponse> Handle(CreateCustomerFavoriteCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateCustomerFavoriteCommandResponse();

            var validator = new CreateCustomerFavoriteCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            await _repository.CreateCustomerFavoriteAsync(request.CustomerId, request.EntityId, request.EntityType);

            return response;
        }
    }
}
