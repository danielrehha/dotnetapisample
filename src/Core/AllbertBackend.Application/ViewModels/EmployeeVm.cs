using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.ViewModels
{
    public class EmployeeVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<CustomerReviewVm> CustomerReviews { get; set; }
        public DateTime CreatedOn { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
    }
}
