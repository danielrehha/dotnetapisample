using System;
using AllbertBackend.Domain.Algorithms;
using AllbertBackend.Domain.Enums;
using MediatR;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListAsync
{
    public class GetBusinessAppointmentListQuery : IRequest<GetBusinessAppointmentListQueryResponse>
    {
        public Guid BusinessId { get; }
        public AppointmentStatus Status { get; }
        public GetBusinessAppointmentListQuery(Guid businessId, AppointmentStatus status)
        {
            BusinessId = businessId;
            Status = status;
        }
    }
}
