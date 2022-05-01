using AllbertBackend.Application.Features.Business.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessList
{
    public class GetFeaturedBusinessListQueryResponse : BaseResponse
    {
        public List<BusinessVm> Businesses { get; set; }
    }
}
