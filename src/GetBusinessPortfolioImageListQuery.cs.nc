using AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageList;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessPortfolioImageListQuery : IRequest<GetBusinessPortfolioImageListQueryResponse>
    {
        public Guid BusinessId { get; }
        public GetBusinessPortfolioImageListQuery(Guid businessId)
        {
            BusinessId = businessId;
        }
    }
}
