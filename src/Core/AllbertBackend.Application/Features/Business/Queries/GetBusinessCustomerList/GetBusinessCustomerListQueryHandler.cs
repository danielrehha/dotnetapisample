using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerListQuery
{
    public class GetBusinessCustomerListQueryHandler : IRequestHandler<GetBusinessCustomerListQuery, GetBusinessCustomerListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public GetBusinessCustomerListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetBusinessCustomerListQueryResponse> Handle(GetBusinessCustomerListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessCustomerListQueryResponse();

            var result = await _repository.GetBusinessCustomerListAsync(request.BusinessId, request.Parameters);

            var customerListVm = new PagedList<CustomerListViewVm>();
            foreach (var customer in result)
            {
                customerListVm.Add(_mapper.Map<CustomerListViewVm>(customer));
            }

            response.Customers = _mapper.Map<PagedList<CustomerListViewVm>>(result);
            response.Customers.Clear();
            response.Customers.AddRange(customerListVm);

            return response;
        }
    }
}
