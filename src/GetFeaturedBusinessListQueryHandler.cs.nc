using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Business.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessList
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
