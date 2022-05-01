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
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeList
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
