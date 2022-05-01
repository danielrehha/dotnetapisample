using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList
{
    public class CalendarEmployeeVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<AvailableTimeslotVm> AvailableTimeslots { get; set; } = new List<AvailableTimeslotVm>();
        public List<AppointmentVm> Appointments { get; set; } = new List<AppointmentVm>();
        public List<ClosedAppointmentVm> ClosedAppointments { get; set; } = new List<ClosedAppointmentVm>();
        public DateTime CreatedOn { get; set; }
    }
}
