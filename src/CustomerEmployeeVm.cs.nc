using AllbertBackend.Application.Features.Employee.ViewModels;
using AllbertBackend.Application.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.ViewModels
{
    public class CustomerEmployeeVm
    {
        public Guid Id { get; set; }
        public CustomerEmployeeInfoVm EmployeeInfo { get; set; }
        public CustomerBusinessVm Business { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public EmployeeScheduleSettingsVm ScheduleSettings { get; set; }
        public List<RatingVm> Ratings { get; set; } = new List<RatingVm>();
        public DateTime CreatedOn { get; set; }
    }
}
