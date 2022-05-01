using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
{
    public class CustomerListView
    {
        public int AppointmentCount { get; set; }
        public bool Banned { get; set; }
        public Domain.Entities.Customer Customer { get; set; }
    }
}
