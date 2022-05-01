using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeListQuery
{
    public class GetFeaturedEmployeeListQueryResponse : BaseResponse
    {
        public List<CustomerEmployeeVm> Employees { get; set; }
    }
}