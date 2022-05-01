using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery
{
    public class GetScheduleQueryResponse : BaseResponse
    {
        public List<EmployeeWithScheduleVm> Employees { get; set; }
    }
}