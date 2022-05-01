using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageListQuery
{
    public class GetEmployeePortfolioImageListQueryHandler : IRequestHandler<GetEmployeePortfolioImageListQuery, GetEmployeePortfolioImageListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public GetEmployeePortfolioImageListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetEmployeePortfolioImageListQueryResponse> Handle(GetEmployeePortfolioImageListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetEmployeePortfolioImageListQueryResponse();

            var validator = new GetEmployeePortfolioImageListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetEmployeePortfolioListAsync(request.EmployeeId);

            response.Images = _mapper.Map<List<ApplicationImageVm>>(result);

            return response;
        }
    }
}
