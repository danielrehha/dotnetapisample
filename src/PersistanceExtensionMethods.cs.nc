using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Helpers
{
    public static class PersistanceExtensionMethods
    {
        public static AvailableTimeslot FindTimeslotOrNull(this List<AvailableTimeslot> timeslotList, Appointment appointment)
        {
            foreach (var timeslot in timeslotList)
            {
                if (appointment.StartDate.Date == timeslot.StartDate.Date
                    && appointment.StartDate >= timeslot.StartDate
                    && appointment.EndDate <= timeslot.EndDate)
                {
                    return timeslot;
                }
            }
            return null;
        }
    }
}
