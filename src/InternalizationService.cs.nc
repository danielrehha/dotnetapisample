using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
using AllbertBackend.Application.Internalization;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Infrastructure.Internalization
{
    public class InternalizationService : IInternalizationService
    {
        private List<EventTitleInternalization> EventTitleInternalizations = new List<EventTitleInternalization>();
        public InternalizationService()
        {
            _loadInternalizationData();
        }
        public string GetEventTitle(EventType e, string languageIso639Code)
        {
            var data = EventTitleInternalizations.FirstOrDefault(title => title.EventType == e);
            return data.Lang[languageIso639Code];
        }
        public List<EventTitleInternalization> EventTitleInternalizationList() => EventTitleInternalizations;
        private void _loadInternalizationData()
        {
            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "Intl/intl_event_titles.json");
            using (var r = new StreamReader(filePath))
            {
                var content = r.ReadToEnd();
                var json = JsonSerializer.Deserialize<List<Dictionary<string, dynamic>>>(content);
                foreach (var item in json)
                {
                    var title = new EventTitleInternalization()
                    {
                        EventType = Enum.Parse(typeof(EventType),item["eventType"].ToString()),
                        Lang = JsonSerializer.Deserialize<Dictionary<string,string>>(item["lang"].ToString()),
                    };
                    EventTitleInternalizations.Add(title);
                }
            }
        }
    }
}
