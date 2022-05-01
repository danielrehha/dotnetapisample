using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class CustomerEmployeeFavorite : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid CustomerId { get; set; }
        public Guid EntityId { get; set; }
        public string EntityType { get; } = "employee";
        public Employee Entity { get; set; }
    }
}
