using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceList
{
    public class GetBusinessServiceListQueryHandler : IRequestHandler<GetBusinessServiceListQuery, GetBusinessServiceListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        public GetBusinessServiceListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetBusinessServiceListQueryResponse> Handle(GetBusinessServiceListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessServiceListQueryResponse();
            var result = await _repository.GetServicesAsync(request.BusinessId);
            response.Services = _mapper.Map<List<ServiceVm>>(result);
            return response;
        }
    }
}
