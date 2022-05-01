using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class CalendarEmployeeVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<AppointmentVm> Appointments { get; set; } = new List<AppointmentVm>();
        public List<WorkDayVm> WorkDayList { get; set; } = new List<WorkDayVm>();
        public List<EmployeeWorkBlockVm> WorkBlockList { get; set; } = new List<EmployeeWorkBlockVm>();
        public DateTime CreatedOn { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
    }
}
