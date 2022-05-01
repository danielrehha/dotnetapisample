using AllbertBackend.Application.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateSchedule
{
    public class UpdateScheduleCommandResponse : BaseResponse
    {
        public List<WorkDayVm> WorkDayList { get; set; } = new List<WorkDayVm>();
        public EmployeeScheduleSettingsVm ScheduleSettings { get; set; }
    }
}
