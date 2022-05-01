using AllbertBackend.Application.Features.Employee.ViewModels;
using AllbertBackend.Application.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetSchedule.ViewModels
{
    public class EmployeeWithScheduleVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public EmployeeScheduleSettingsVm ScheduleSettings { get; set; }
        public List<WorkDayVm> WorkDayList { get; set; } = new List<WorkDayVm>();
    }
}
