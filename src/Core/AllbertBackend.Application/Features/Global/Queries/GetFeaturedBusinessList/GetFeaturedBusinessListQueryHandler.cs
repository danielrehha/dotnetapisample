using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessListQuery
{
    public class GetFeaturedBusinessListQueryHandler : IRequestHandler<GetFeaturedBusinessListQuery, GetFeaturedBusinessListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public GetFeaturedBusinessListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetFeaturedBusinessListQueryResponse> Handle(GetFeaturedBusinessListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetFeaturedBusinessListQueryResponse();

            var result = await _repository.GetFeaturedBusinessListAsync();

            response.Businesses = _mapper.Map<List<BusinessVm>>(result);

            return response;
        }
    }
}
