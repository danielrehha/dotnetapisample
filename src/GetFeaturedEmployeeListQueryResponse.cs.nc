using AllbertBackend.Application.Features.Customer.ViewModels;
using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeList
{
    public class GetFeaturedEmployeeListQueryResponse : BaseResponse
    {
        public List<CustomerEmployeeVm> Employees { get; set; }
    }
}
