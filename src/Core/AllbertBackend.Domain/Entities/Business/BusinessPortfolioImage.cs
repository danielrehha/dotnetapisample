using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class BusinessPortfolioImage : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid BusinessId { get; set; }
        public string PathUrl { get; set; }
    }
}
