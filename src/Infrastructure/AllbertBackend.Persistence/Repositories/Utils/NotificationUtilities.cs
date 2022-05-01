using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Persistence.Repositories.Utils
{
    public static class NotificationUtilities
    {
        public static string BuildTitle(string intl, EventType eventType, EntityType targetEntity)
        {
            if(eventType == EventType.CustomerCreateAppointment)
            {
                return "Uj foglalasa erkezett";
            }
            return "Uj foglalas";
        }

        public static async Task<string> BuildDescription(string intl, EventType eventType, dynamic data)
        {
            return await JsonSerializer.DeserializeAsync<dynamic>(data);
        }
    }
}
