using AllbertBackend.Application.Features.Customer.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
{
    public class BusinessCustomerListVm
    {
        public Guid Id { get; set; }
        public CustomerInfoVm CustomerInfo { get; set; }
    }
}
