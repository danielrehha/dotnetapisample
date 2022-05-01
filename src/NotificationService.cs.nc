using System;
using System.Collections.Generic;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.Internalization;
using AllbertBackend.Application.Notification;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Infrastructure.Notification
{
    public class NotificationService : INotificationService
    {
        private readonly IInternalizationService _internalization;
        public NotificationService(IInternalizationService internalization)
        {
            _internalization = internalization;
        }
        private string GetNotificationRoute(EventType eventType)
        {
            switch (eventType)
            {
                case EventType.CustomerCreateAppointment:
                    break;
                case EventType.BusinessCreateAppointment:
                    break;
                case EventType.CustomerDeleteAppointment:
                    break;
                case EventType.BusinessDeleteAppointment:
                    break;
                case EventType.CustomerRescheduleAppointment:
                    break;
                case EventType.BusinessRescheduleAppointment:
                    break;
                case EventType.SubscriptionEnds:
                    break;
                case EventType.SubscriptionEnded:
                    break;
                case EventType.SubscriptionStarted:
                    break;
                case EventType.SubscriptionRenewed:
                    break;
                case EventType.SubscriptionDeletedBySystem:
                    break;
                case EventType.UpcomingAppointment:
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(eventType), eventType, null);
            }
            return "Event";
        }
        public NotificationDto ConvertEventToNotification(ApplicationEvent e, string languageIso639Code)
        {
            var notification = new NotificationDto()
            {
                Id = e.Id,
                Seen = e.Seen,
                CreatedOn = e.CreatedOn,
                Title = _internalization.GetEventTitle(e.Type, languageIso639Code),
                Content = "content",
                NavigationRoute = GetNotificationRoute(e.Type),
            };
            return notification;
        }
    }
}
