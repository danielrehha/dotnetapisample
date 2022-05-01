using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteListQuery
{
    public class GetCustomerFavoriteListQueryHandler : IRequestHandler<GetCustomerFavoriteListQuery, GetCustomerFavoriteListQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public GetCustomerFavoriteListQueryHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetCustomerFavoriteListQueryResponse> Handle(GetCustomerFavoriteListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerFavoriteListQueryResponse();

            var validator = new GetCustomerFavoriteListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            dynamic entities = null;

            if(request.EntityType == "business")
            {
                entities = await _repository.GetCustomerFavoriteBusinessListAsync(request.CustomerId);
                entities = _mapper.Map<List<CustomerBusinessFavoriteVm>>(entities);
            } else
            {
                entities = await _repository.GetCustomerFavoriteEmployeeListAsync(request.CustomerId);
                entities = _mapper.Map<List<CustomerEmployeeFavoriteVm>>(entities);
            }

            response.Favorites = _mapper.Map<List<CustomerFavoriteVm>>(entities);

            return response;
        }
    }
}
