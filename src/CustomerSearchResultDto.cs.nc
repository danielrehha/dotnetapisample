using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Dtos
{
    public class CustomerSearchResultDto
    {
        public List<Business> Businesses { get; set; } = new();
        public List<Employee> Employees { get; set; } = new();
    }
}
