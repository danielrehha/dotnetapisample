using AllbertBackend.Application.Features.Employee;
using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using AllbertBackend.Application.Features.Business.Commands.UpdateSettings;
namespace AllbertBackend.Application.Features.Business.ViewModels
{
    public class BusinessVm
    {
        public Guid Id { get; set; }
        public string FirebaseUid { get; set; }
        public BusinessInfoVm BusinessInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public List<EmployeeVm> Employees { get; set; } = new List<EmployeeVm>();
        public List<ApplicationImageVm> PortfolioImages { get; set; } = new List<ApplicationImageVm>();
        public SubscriptionInfoVm SubscriptionInfo { get; set; }
        public BusinessSettingsVm BusinessSettings { get; set; }
        public List<ServiceVm> Services { get; set; } = new List<ServiceVm>();
        public bool Solo { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
