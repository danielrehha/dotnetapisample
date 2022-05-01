using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageList;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AllbertBackend.Domain.Entities;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries
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
