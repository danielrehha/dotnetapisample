using AllbertBackend.Domain.Entities.Shared;
using System;
namespace AllbertBackend.Domain.Entities
{
    public class EmployeeAvatarImage : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid EmployeeId { get; set; }
        public string PathUrl { get; set; }
    }
}
