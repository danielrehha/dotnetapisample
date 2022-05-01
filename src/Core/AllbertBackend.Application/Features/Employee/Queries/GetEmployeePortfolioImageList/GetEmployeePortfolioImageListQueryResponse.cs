using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageListQuery
{
    public class GetEmployeePortfolioImageListQueryResponse : BaseResponse
    {
        public List<ApplicationImageVm> Images { get; set; }
    }
}