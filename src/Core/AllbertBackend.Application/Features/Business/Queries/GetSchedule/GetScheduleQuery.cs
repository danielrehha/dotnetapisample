using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery
{
    public class GetScheduleQuery : IRequest<GetScheduleQueryResponse>
    {
        public Guid BusinessId { get; set; }

        public GetScheduleQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
