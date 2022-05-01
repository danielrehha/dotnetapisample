using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Employee.ViewModels;
using AutoMapper;
using MediatR;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListAsync
{
    public class GetBusinessAppointmentListQueryHandler : IRequestHandler<GetBusinessAppointmentListQuery, GetBusinessAppointmentListQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        public GetBusinessAppointmentListQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetBusinessAppointmentListQueryResponse> Handle(GetBusinessAppointmentListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessAppointmentListQueryResponse();
            var validator = new GetBusinessAppointmentListQueryValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _repository.GetBusinessAppointmentListAsync(request.BusinessId, request.Status);
            if(result == null)
            {
                response.Success = false;
                response.ErrorMessage = "Couldn't retrieve appointment list.";
                return response;
            }
            response.Appointments = _mapper.Map<List<AppointmentVm>>(result);
            return response;
        }
    }
}
