using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
namespace AllbertBackend.Domain.Entities
{
    public class Employee : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public BusinessInfo BusinessInfo {get;set;}
        public Business Business { get; set; }
        public EmployeeInfo EmployeeInfo { get; set; }
        public EmployeeScheduleSettings ScheduleSettings { get; set; }
        [NotMapped]
        public LocationData LocationData { get; set; }
        public EmployeeAvatarImage Avatar { get; set; }
        public List<AvailableTimeslot> AvailableTimeslots { get; set; } = new List<AvailableTimeslot>();
        public List<Appointment> Appointments { get; set; } = new List<Appointment>();
        public List<WorkDay> WorkDayList { get; set; } = new List<WorkDay>();
        public List<EmployeePortfolioImage> PortfolioImages { get; set; } = new List<EmployeePortfolioImage>();
        public List<Rating> Ratings { get; set; } = new List<Rating>();
    }
}
