using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Domain.Entities.Shared
{
    public class NotificationDto : BaseEntity
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string NavigationRoute { get; set; }
        public bool Seen { get; set; }
        public EventType EventType { get; set; }
    }
}
