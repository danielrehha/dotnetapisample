using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class CustomerBusinessFavorite : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid CustomerId { get; set; }
        public Guid EntityId { get; set; }
        public string EntityType { get; } = "business";
        public Business Entity { get; set; }
    }
}
