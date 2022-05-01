using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.ViewModels;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Global.Queries.SearchCustomerList
{
    public class SearchCustomerListQueryHandler : IRequestHandler<SearchCustomerListQuery, SearchCustomerListQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public SearchCustomerListQueryHandler(IMapper mapper, ICustomerRepository repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public async Task<SearchCustomerListQueryResponse> Handle(SearchCustomerListQuery request, CancellationToken cancellationToken)
        {
            var response = new SearchCustomerListQueryResponse();

            try
            {
                var result = await _repository.GetSearchCustomerListAsync(request.CustomerFlair);
                response.Customers = _mapper.Map<List<CustomerVm>>(result);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
            }

            return response;
        }
    }
}