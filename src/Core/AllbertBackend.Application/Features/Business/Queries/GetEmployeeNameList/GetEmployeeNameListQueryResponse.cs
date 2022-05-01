using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList
{
    public class GetEmployeeNameListQueryResponse : BaseResponse
    {
        public List<EmployeeNameListDto> Employees { get; set; }
    }
}