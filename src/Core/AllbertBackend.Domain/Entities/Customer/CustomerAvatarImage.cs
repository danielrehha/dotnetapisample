using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class CustomerAvatarImage : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid CustomerId { get; set; }
        public string PathUrl { get; set; }
    }
}
