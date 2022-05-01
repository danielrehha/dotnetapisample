using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class BusinessAvatarImage : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public string PathUrl { get; set; }
    }
}
