using AutoMapper;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery
{
    public class GetCustomerAppointmentListQueryHandler : IRequestHandler<GetCustomerAppointmentListQuery, GetCustomerAppointmentListQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public GetCustomerAppointmentListQueryHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetCustomerAppointmentListQueryResponse> Handle(GetCustomerAppointmentListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerAppointmentListQueryResponse();

            var validator = new GetCustomerAppointmentListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var result = await _repository.GetCustomerAppointmentListAsync(request.CustomerId,request.Status);

            response.Appointments = _mapper.Map<List<CustomerAppointmentVm>>(result);

            return response;
        }
    }
}
