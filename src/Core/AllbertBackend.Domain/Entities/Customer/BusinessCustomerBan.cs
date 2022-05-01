using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Domain.Entities
{
    public class BusinessCustomerBan
    {
        public Guid BusinessId { get; set; }
        public Guid CustomerId { get; set; }
    }
}
