using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceListQuery
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
