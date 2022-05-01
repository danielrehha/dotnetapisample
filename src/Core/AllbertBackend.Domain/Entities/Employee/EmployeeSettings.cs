using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class EmployeeSettings : BaseEntity
    {
        public Guid EmployeeId { get; set; }
        public int AllowedBookingFrequencyInMinutes { get; set; }
        public int AllowedAppointmentDeletionDeadlineInHours { get; set; }
        public int AllowedAppointmentCreationDeadlineInHours { get; set; }
        public int MinAllowedCustomerBookingIndex { get; set; }

        public static EmployeeSettings Default(Guid employeeId)
        {
            return new EmployeeSettings()
            {
                EmployeeId = employeeId,
                AllowedBookingFrequencyInMinutes = 30,
                AllowedAppointmentDeletionDeadlineInHours = 1,
                AllowedAppointmentCreationDeadlineInHours = 1,
                MinAllowedCustomerBookingIndex = 1,
            };
        }
    }
}