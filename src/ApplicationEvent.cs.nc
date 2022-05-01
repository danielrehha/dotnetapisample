using AllbertBackend.Domain.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
