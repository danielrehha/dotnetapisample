using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
namespace AllbertBackend.Domain.Entities
{
    public class Service : BaseEntity
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public double Cost { get; set; }
        public int Duration { get; set; }
        public int Offset { get; set; }
        public int PauseAfterInMinutes { get; set; }
        public string Currency { get; set; }
        public Guid BusinessId { get; set; }
        public Business Business { get; set; }
    }
}
