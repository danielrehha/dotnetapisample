using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.ViewModels
{
    public class CustomerEmployeeFavoriteVm
    {
        public Guid Id { get; set; }
        public Guid CustomerId { get; set; }
        public Guid EntityId { get; set; }
        public string EntityType { get; } = "employee";
        public CustomerEmployeeVm Entity { get; set; }
    }
}
