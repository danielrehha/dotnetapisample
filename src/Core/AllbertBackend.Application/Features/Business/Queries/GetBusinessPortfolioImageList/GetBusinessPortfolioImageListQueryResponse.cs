using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageListQuery
{
    public class GetBusinessPortfolioImageListQueryResponse : BaseResponse
    {
        public List<ApplicationImageVm> Images { get; set; }
    }
}
