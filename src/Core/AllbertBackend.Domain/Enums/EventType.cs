namespace AllbertBackend.Domain.Enums
{
    public enum EventType
    {
        CustomerCreateAppointment,
        BusinessCreateAppointment,
        CustomerDeleteAppointment,
        BusinessDeleteAppointment,
        CustomerRescheduleAppointment,
        BusinessRescheduleAppointment,
        SubscriptionEnds,
        SubscriptionEnded,
        SubscriptionStarted,
        SubscriptionRenewed,
        SubscriptionDeletedBySystem,
        UpcomingAppointment,
    }
}
