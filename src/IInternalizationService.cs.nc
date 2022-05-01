using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Application.Internalization
{
    public interface IInternalizationService
    {
        List<EventTitleInternalization> EventTitleInternalizationList();
        string GetEventTitle(EventType e, string languageIso639Code);
    }
}
