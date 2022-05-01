using AllbertBackend.Application.Features.Employee.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageList
{
    public class GetEmployeePortfolioImageListQueryResponse : BaseResponse
    {
        public List<ApplicationImageVm> Images { get; set; }
    }
}
