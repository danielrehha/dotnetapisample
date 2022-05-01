using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeListQuery
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
