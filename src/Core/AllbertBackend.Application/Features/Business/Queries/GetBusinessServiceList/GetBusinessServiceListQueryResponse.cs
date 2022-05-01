using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceListQuery
{
    public class GetBusinessServiceListQueryResponse : BaseResponse
    {
        public List<ServiceVm> Services { get; set; }
    }
}
