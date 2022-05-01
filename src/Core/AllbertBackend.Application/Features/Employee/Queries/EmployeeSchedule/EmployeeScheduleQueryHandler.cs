using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeScheduleQuery
{
    public class EmployeeScheduleQueryHandler : IRequestHandler<EmployeeScheduleQuery, EmployeeScheduleQueryResponse>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IMapper _mapper;

        public EmployeeScheduleQueryHandler(IEmployeeRepository employeeRepository, IMapper mapper)
        {
            _employeeRepository = employeeRepository;
            _mapper = mapper;
        }

        public async Task<EmployeeScheduleQueryResponse> Handle(EmployeeScheduleQuery request, CancellationToken cancellationToken)
        {
            var response = new EmployeeScheduleQueryResponse();

            var validator = new EmployeeScheduleQueryValidator(_employeeRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _employeeRepository.GetScheduleAsync(request.EmployeeId);

            response.EmployeeSchedule = _mapper.Map<EmployeeScheduleVm>(result);

            return response;
        }
    }
}
