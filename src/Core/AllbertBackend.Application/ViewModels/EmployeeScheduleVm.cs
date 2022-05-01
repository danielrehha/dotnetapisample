using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class EmployeeScheduleVm
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public EmployeeAvatarImageVm Avatar { get; set; }
        public List<AppointmentVm> BookedTimeslots { get; set; }
        public bool Enabled { get; set; }
        public DateTime CreatedOn { get; set; }
        public bool Deleted { get; set; }
    }
}
