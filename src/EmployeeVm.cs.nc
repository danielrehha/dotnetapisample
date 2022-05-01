using AllbertBackend.Application.Features.Business.ViewModels;
using System;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class EmployeeVm
    {
        public Guid Id { get; set; }
        public EmployeeInfoVm EmployeeInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<ApplicationImageVm> PortfolioImages { get; set; } = new List<ApplicationImageVm>();
        public List<RatingVm> Ratings { get; set; } = new List<RatingVm>();
        public DateTime CreatedOn { get; set; }
    }
}
