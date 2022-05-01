using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.ViewModels
{
    public class CustomerAppointmentVm
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; } 
        public Guid EmployeeId { get; set; }
        public CustomerEmployeeVm Employee { get; set; }
        public ServiceVm Service { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
