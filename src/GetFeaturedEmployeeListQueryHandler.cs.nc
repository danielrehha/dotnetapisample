using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Customer.ViewModels;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeList
{
    public class GetFeaturedEmployeeListQueryHandler : IRequestHandler<GetFeaturedEmployeeListQuery, GetFeaturedEmployeeListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;
        public GetFeaturedEmployeeListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetFeaturedEmployeeListQueryResponse> Handle(GetFeaturedEmployeeListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetFeaturedEmployeeListQueryResponse();
            var result = await _repository.GetFeaturedEmployeeListAsync();
            response.Employees = _mapper.Map<List<CustomerEmployeeVm>>(result);
            return response;
        }
    }
}
