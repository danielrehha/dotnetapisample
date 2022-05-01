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
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList
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
            var result = await _repository.GetEmployeeScheduleListAsync(request.BusinessId);
            response.Employees = _mapper.Map<List<CalendarEmployeeVm>>(result);
            return response;
        }
    }
}
