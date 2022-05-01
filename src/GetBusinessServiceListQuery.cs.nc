using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceList
{
    public class GetBusinessServiceListQuery : IRequest<GetBusinessServiceListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetBusinessServiceListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
