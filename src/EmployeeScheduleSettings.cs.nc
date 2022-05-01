using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Entities
{
    public class EmployeeScheduleSettings : BaseEntity
    {
        public Guid EmployeeId { get; set; }
        public int AllowedBookingFrequencyInMinutes { get; set; }
        public int AllowedAppointmentDeletionDeadlineInHours { get; set; }
    }
}
