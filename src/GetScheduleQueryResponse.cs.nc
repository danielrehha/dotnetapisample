using AllbertBackend.Application.Features.Business.Queries.GetSchedule.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Business.Queries.GetSchedule
{
    public class GetScheduleQueryResponse : BaseResponse
    {
        public List<EmployeeWithScheduleVm> Employees { get; set; }
    }
}
