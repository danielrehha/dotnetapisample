using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListQueryV2
{
    public class GetBusinessAppointmentListQueryV2Handler : IRequestHandler<GetBusinessAppointmentListQueryV2, GetBusinessAppointmentListQueryV2Response>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public GetBusinessAppointmentListQueryV2Handler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetBusinessAppointmentListQueryV2Response> Handle(GetBusinessAppointmentListQueryV2 request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessAppointmentListQueryV2Response();

            var result = await _repository.GetBusinessPagedAppointmentListAsync(request.BusinessId, request.Parameters);

            var appointmentVmList = new PagedList<AppointmentVm>();
            foreach(var apt in result)
            {
                appointmentVmList.Add(_mapper.Map<AppointmentVm>(apt));
            }

            response.Appointments = _mapper.Map<PagedList<AppointmentVm>>(result);
            response.Appointments.Clear();
            response.Appointments.AddRange(appointmentVmList);

            return response;
        }
    }
}
