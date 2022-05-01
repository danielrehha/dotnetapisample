using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.ViewModels
{
    public class CustomerBusinessVm
    {
        public Guid Id { get; set; }
        public BusinessInfoVm BusinessInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
    }
}
