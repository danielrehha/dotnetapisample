using MediatR;
using System;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageListQuery
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
