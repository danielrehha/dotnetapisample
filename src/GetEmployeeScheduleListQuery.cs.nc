using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList
{
    public class GetEmployeeScheduleListQuery : IRequest<GetEmployeeScheduleListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetEmployeeScheduleListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
