using System;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Domain.Entities.Shared
{
    public class ApplicationEvent : BaseEntity
    {
        public Guid Id { get; set; }
        public Guid? BusinessId { get; set; }
        public EventType Type { get; set; }
        public bool Seen { get; set; }
        public string SerializedData { get; set; }
    }
}
