using AllbertBackend.Domain.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListPaged
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
