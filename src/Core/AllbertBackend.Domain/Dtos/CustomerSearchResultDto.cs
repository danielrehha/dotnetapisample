using System.Collections.Generic;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Domain.Dtos
{
    public class CustomerSearchResultDto
    {
        public List<Business> Businesses { get; set; } = new();
        public List<Employee> Employees { get; set; } = new();
    }
}
