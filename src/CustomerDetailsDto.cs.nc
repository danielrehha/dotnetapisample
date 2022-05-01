using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Features.Customer.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails
{
    public class CustomerDetailsDto
    {
        public int TotalAppointmentCount { get; set; }
        public int UnCompletedAppointmentCount { get; set; }
        public double AppointmentCompletionIndex { get; set; }
        public CustomerDetailsVm Customer { get; set; }
    }
}
