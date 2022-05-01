using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerVm
    {
        public Guid Id { get; set; }
        public string FirebaseUid { get; set; }
        public CustomerInfoVm CustomerInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        //public List<RatingVm> Ratings { get; set; } = new List<RatingVm>();
        public List<AppointmentVm> Appointments { get; set; } = new List<AppointmentVm>();
        public DateTime CreatedOn { get; set; }
    }
}
