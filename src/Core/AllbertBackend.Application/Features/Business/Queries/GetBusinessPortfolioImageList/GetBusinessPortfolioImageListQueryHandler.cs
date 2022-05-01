using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageListQuery
{
    public class GetBusinessPortfolioImageListQueryHandler : IRequestHandler<GetBusinessPortfolioImageListQuery, GetBusinessPortfolioImageListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        
        public GetBusinessPortfolioImageListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetBusinessPortfolioImageListQueryResponse> Handle(GetBusinessPortfolioImageListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessPortfolioImageListQueryResponse();

            var validator = new GetBusinessPortfolioImageListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetPortfolioListAsync(request.BusinessId);
            response.Images = _mapper.Map<List<BusinessPortfolioImage>, List<ApplicationImageVm>>(result);

            return response;
        }
    }
}
