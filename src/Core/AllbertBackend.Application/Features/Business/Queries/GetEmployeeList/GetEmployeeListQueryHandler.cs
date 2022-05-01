using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery
{
    public class GetEmployeeListQueryHandler : IRequestHandler<GetEmployeeListQuery, GetEmployeeListQueryResponse>
    {
        private readonly IBusinessRepository _businessRepository;
        private readonly IMapper _mapper;

        public GetEmployeeListQueryHandler(IBusinessRepository businessRepository, IMapper mapper)
        {
            _businessRepository = businessRepository;
            _mapper = mapper;
        }

        public async Task<GetEmployeeListQueryResponse> Handle(GetEmployeeListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetEmployeeListQueryResponse();

            var validator = new GetEmployeeListQueryValidator(_businessRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _businessRepository.GetEmployeeListAsync(request.BusinessId);

            response.Employees = _mapper.Map<List<EmployeeVm>>(result);

            return response;
        }
    }
}
