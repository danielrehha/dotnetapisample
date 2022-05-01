using System.Collections.Generic;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Application.Internalization
{
    public class EventTitleInternalization
    {
        public EventType EventType { get; set; }
        public Dictionary<string, string> Lang { get; set; }
    }
}
