using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
namespace AllbertBackend.Domain.Entities
{
    public class EmployeeSchedule
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public EmployeeAvatarImage Avatar { get; set; }
        public List<AvailableTimeslot> AvailableTimeslots { get; set; }
        public List<Appointment> BookedTimeslots { get; set; }
    }
}
