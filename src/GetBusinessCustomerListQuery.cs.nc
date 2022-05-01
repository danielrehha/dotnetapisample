using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
{
    public class GetBusinessCustomerListQuery : IRequest<GetBusinessCustomerListQueryResponse>
    {
        public Guid BusinessId { get; set; }
        public BusinessCustomerQueryParameters Parameters;
        public GetBusinessCustomerListQuery(Guid businessId, BusinessCustomerQueryParameters parameters)
        {
            BusinessId = businessId;
            Parameters = parameters;
        }
    }
}
