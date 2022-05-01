using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessListQuery
{
    public class GetFeaturedBusinessListQueryResponse : BaseResponse
    {
        public List<BusinessVm> Businesses { get; set; }
    }
}