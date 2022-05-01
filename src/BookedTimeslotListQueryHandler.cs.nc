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
namespace AllbertBackend.Application.Features.Employee.Queries.BookedTimeslotList
{
    public class BookedTimeslotListQueryHandler : IRequestHandler<BookedTimeslotListQuery, BookedTimeslotListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;
        public BookedTimeslotListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<BookedTimeslotListQueryResponse> Handle(BookedTimeslotListQuery request, CancellationToken cancellationToken)
        {
            var response = new BookedTimeslotListQueryResponse();
            var validator = new BookedTimeslotListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if (!response.Success)
            {
                return response;
            }
            var result = await _repository.AvailableTimeslotListAsync(request.EmployeeId);
            response.BookedTimeslots = _mapper.Map<List<AppointmentVm>>(result);
            return response;
        }
    }
}
