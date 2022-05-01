using System;
using AllbertBackend.Domain.Enums;
namespace AllbertBackend.Domain.Algorithms
{
    public static class AppointmentStatusResolver
    {
        public static AppointmentStatus ResolveStatus(string status)
        {
            if(status == "active")
            {
                return AppointmentStatus.Active;
            }
            if(status == "inreview")
            {
                return AppointmentStatus.InReview;
            }
            if(status == "reviewed")
            {
                return AppointmentStatus.Reviewed;
            }
            return AppointmentStatus.Deleted;
        }
    }
}
