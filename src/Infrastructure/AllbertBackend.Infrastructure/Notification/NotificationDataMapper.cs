using System;
using System.Collections.Generic;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Infrastructure.Notification
{
    public class NotificationDataMapper
    {
        private readonly Dictionary<EventType, Type> _eventDataTypes;

        public NotificationDataMapper()
        {
            _eventDataTypes = new Dictionary<EventType, Type>()
            {
                {EventType.CustomerCreateAppointment, typeof(Appointment)},
                {EventType.BusinessCreateAppointment, typeof(Appointment)},
            };
        }

        public Type GetEventDataType(EventType eventType)
        {
            return _eventDataTypes[eventType];
        }
    }
}