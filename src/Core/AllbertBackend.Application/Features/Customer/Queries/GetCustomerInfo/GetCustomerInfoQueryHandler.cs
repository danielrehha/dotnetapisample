using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfoQuery
{
    public class GetCustomerInfoQueryHandler : IRequestHandler<GetCustomerInfoQuery, GetCustomerInfoQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public GetCustomerInfoQueryHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetCustomerInfoQueryResponse> Handle(GetCustomerInfoQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerInfoQueryResponse();

            var validator = new GetCustomerInfoQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetCustomerInfoAsync(request.CustomerId);

            response.CustomerInfo = _mapper.Map<CustomerInfoVm>(result);

            return response;
        }
    }
}
