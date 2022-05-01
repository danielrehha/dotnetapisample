using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Features.Customer.ViewModels;
using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails
{
    public class GetCustomerDetailsQueryHandler : IRequestHandler<GetCustomerDetailsQuery, GetCustomerDetailsQueryResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;
        public GetCustomerDetailsQueryHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetCustomerDetailsQueryResponse> Handle(GetCustomerDetailsQuery request, CancellationToken cancellationToken)
        {
            var response = new GetCustomerDetailsQueryResponse();
            var customer = await _repository.GetCustomerDetailsAsync(request.CustomerId);
            var totalAppointments = await _repository.GetCustomerTotalAppointmentCountAsync(request.CustomerId,null);
            var uncompletedAppointments = await _repository.GetCustomerTotalAppointmentCountAsync(request.CustomerId, 3);
            uncompletedAppointments += await _repository.GetCustomerTotalAppointmentCountAsync(request.CustomerId, 4);
            var appointmentCompletionIndex = await _repository.GetCustomerAppointmentCompletionIndex(request.CustomerId);
            response.CustomerDetails.Customer = _mapper.Map<CustomerDetailsVm>(customer);
            response.CustomerDetails.TotalAppointmentCount = totalAppointments;
            response.CustomerDetails.UnCompletedAppointmentCount = uncompletedAppointments;
            response.CustomerDetails.AppointmentCompletionIndex = appointmentCompletionIndex;
            return response;
        }
    }
}
