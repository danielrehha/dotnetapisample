using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class Employee : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public Business Business { get; set; }
        public EmployeeInfo EmployeeInfo { get; set; }
        public EmployeeSettings Settings { get; set; }
        [NotMapped]
        public LocationData LocationData { get; set; }
        public EmployeeAvatarImage Avatar { get; set; }
        public List<Appointment> Appointments { get; set; } = new List<Appointment>();
        public List<WorkDay> WorkDayList { get; set; } = new List<WorkDay>();
        public List<EmployeePortfolioImage> PortfolioImages { get; set; } = new List<EmployeePortfolioImage>();
        public List<CustomerReview> CustomerReviews { get; set; } = new List<CustomerReview>();
        public List<EmployeeWorkBlock> WorkBlockList = new List<EmployeeWorkBlock>();
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
    }
}
