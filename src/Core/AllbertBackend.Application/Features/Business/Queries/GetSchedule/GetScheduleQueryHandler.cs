using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery
{
    public class GetScheduleQueryHandler : IRequestHandler<GetScheduleQuery, GetScheduleQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public GetScheduleQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetScheduleQueryResponse> Handle(GetScheduleQuery request, CancellationToken cancellationToken)
        {
            var response = new GetScheduleQueryResponse();

            var validator = new GetScheduleQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetScheduleAsync(request.BusinessId);

            response.Employees = _mapper.Map<List<EmployeeWithScheduleVm>>(result);

            return response;
        }
    }
}
