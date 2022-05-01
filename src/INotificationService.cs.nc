using System.Collections.Generic;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Entities.Shared;
namespace AllbertBackend.Application.Notification
{
    public interface INotificationService
    {
        NotificationDto ConvertEventToNotification(ApplicationEvent e, string languageIso639Code);
    }
}
