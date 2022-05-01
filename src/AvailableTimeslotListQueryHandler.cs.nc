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
namespace AllbertBackend.Application.Features.Employee.Queries.AvailableTimeslotList
{
    public class AvailableTimeslotListQueryHandler : IRequestHandler<AvailableTimeslotListQuery, AvailableTimeslotListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;
        public AvailableTimeslotListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<AvailableTimeslotListQueryResponse> Handle(AvailableTimeslotListQuery request, CancellationToken cancellationToken)
        {
            var response = new AvailableTimeslotListQueryResponse();
            var validator = new AvailableTimeslotListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _repository.AvailableTimeslotListAsync(request.EmployeeId);
            response.AvailableTimeslots = _mapper.Map<List<AvailableTimeslotVm>>(result);
            return response;
        }
    }
}
