using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServiceListQuery
{
    public class EmployeeServiceListQueryHandler : IRequestHandler<EmployeeServiceListQuery, EmployeeServiceListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public EmployeeServiceListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<EmployeeServiceListQueryResponse> Handle(EmployeeServiceListQuery request, CancellationToken cancellationToken)
        {
            var response = new EmployeeServiceListQueryResponse();

            var validator = new EmployeeServiceListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetEmployeeServiceListAsync(request.EmployeeId);

            response.Services = _mapper.Map<List<ServiceVm>>(result);

            return response;
        }
    }
}
