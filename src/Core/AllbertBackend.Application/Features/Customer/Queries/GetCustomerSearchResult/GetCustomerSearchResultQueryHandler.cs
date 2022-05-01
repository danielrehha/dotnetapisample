using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResultQuery
{
    public class GetCustomerSearchResultQueryHandler : IRequestHandler<GetCustomerSearchResultQuery, GetCustomerSearchResultQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public GetCustomerSearchResultQueryHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetCustomerSearchResultQueryResponse> Handle(GetCustomerSearchResultQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerSearchResultQueryResponse();

            var result = await _repository.GetCustomerSearchResultAsync(request.SearchDto);

            response.Businesses = _mapper.Map<List<CustomerBusinessVm>>(result.Businesses);
            response.Employees = _mapper.Map<List<CustomerEmployeeVm>>(result.Employees);

            return response;
        }
    }
}
