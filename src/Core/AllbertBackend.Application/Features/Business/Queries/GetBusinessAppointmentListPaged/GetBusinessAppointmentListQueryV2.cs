using MediatR;
using System;
using AllbertBackend.Domain.Dtos;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListQueryV2
{
    public class GetBusinessAppointmentListQueryV2 : IRequest<GetBusinessAppointmentListQueryV2Response>
    {
        public GetBusinessAppointmentListQueryV2(Guid businessId, BusinessAppointmentQueryParameters parameters)
        {
            BusinessId = businessId;
            Parameters = parameters;
        }

        public Guid BusinessId { get; private set; }
        public BusinessAppointmentQueryParameters Parameters {get;private set;}
    }
}
