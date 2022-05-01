using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.AvailableTimeslotList
{
    public class AvailableTimeslotListQueryResponse : BaseResponse
    {
        public List<AvailableTimeslotVm> AvailableTimeslots { get; set; }
    }
}
