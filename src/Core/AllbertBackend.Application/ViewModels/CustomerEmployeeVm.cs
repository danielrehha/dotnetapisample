using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerEmployeeVm
    {
        public Guid Id { get; set; }
        public CustomerEmployeeInfoVm EmployeeInfo { get; set; }
        public CustomerBusinessVm Business { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public EmployeeSettingsVm Settings { get; set; }
        //public List<RatingVm> Ratings { get; set; } = new List<RatingVm>();
        public DateTime CreatedOn { get; set; }
        public bool Deleted { get; set; }
    }
}
