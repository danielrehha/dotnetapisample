using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class EmployeeWithScheduleVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public EmployeeSettingsVm Settings { get; set; }
        public List<WorkDayVm> WorkDayList { get; set; } = new List<WorkDayVm>();
        public bool Enabled { get; set; }
        public DateTime CreatedOn { get; set; }
        public bool Deleted { get; set; }
    }
}
