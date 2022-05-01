using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeList
{
    public class GetEmployeeListQuery : IRequest<GetEmployeeListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetEmployeeListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
