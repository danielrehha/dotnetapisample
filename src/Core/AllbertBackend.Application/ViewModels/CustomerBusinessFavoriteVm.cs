using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerBusinessFavoriteVm
    {
        public Guid Id { get; set; }
        public Guid CustomerId { get; set; }
        public Guid EntityId { get; set; }
        public string EntityType { get; } = "business";
        public CustomerBusinessVm Entity { get; set; }
    }
}
