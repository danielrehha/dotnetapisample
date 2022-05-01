using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Helpers;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
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
