using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Features.ResultResolver;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList
{
    public class GetCustomerFavoriteGuidListQueryHandler : IRequestHandler<GetCustomerFavoriteGuidListQuery, GetCustomerFavoriteGuidListQueryResponse>
    {
        private readonly ICustomerRepository _repository;

        public GetCustomerFavoriteGuidListQueryHandler(ICustomerRepository repository)
        {
            _repository = repository;
        }

        public async Task<GetCustomerFavoriteGuidListQueryResponse> Handle(GetCustomerFavoriteGuidListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerFavoriteGuidListQueryResponse();

            var validator = new GetCustomerFavoriteGuidListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            response.Favorites = await _repository.GetCustomerFavoriteGuidListAsync(request.CustomerId);

            return response;
        }
    }
}
