using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand
{
    public class UpdateScheduleCommandResponse : BaseResponse
    {
        public List<WorkDayVm> WorkDayList { get; set; } = new List<WorkDayVm>();
        public EmployeeSettingsVm Settings { get; set; }
    }
}
