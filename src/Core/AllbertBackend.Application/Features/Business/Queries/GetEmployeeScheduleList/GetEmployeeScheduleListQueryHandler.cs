using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery
{
    public class GetEmployeeScheduleListQueryHandler : IRequestHandler<GetEmployeeScheduleListQuery, GetEmployeeScheduleListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public GetEmployeeScheduleListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetEmployeeScheduleListQueryResponse> Handle(GetEmployeeScheduleListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetEmployeeScheduleListQueryResponse();

            var validator = new GetEmployeeScheduleListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetEmployeeScheduleListAsync(request.EmployeeScheduleQueryDto);

            response.Employees = _mapper.Map<List<CalendarEmployeeVm>>(result);

            return response;
        }
    }
}
