using System;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class EmployeeScheduleVm
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public EmployeeAvatarImageVm Avatar { get; set; }
        public List<AvailableTimeslotVm> AvailableTimeslots { get; set; }
        public List<AppointmentVm> BookedTimeslots { get; set; }
        public List<ClosedAppointmentVm> ClosedAppointments { get; set; }
    }
}
