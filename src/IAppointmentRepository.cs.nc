using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence.Timeslot
{
    public interface IAppointmentRepository : IAsyncRepository<Appointment>
    {
        Task<Appointment> SetAppointmentStatusAsync(Guid appointmentId, int status);
        Task<bool> IsStatusSet(Guid appointmentId, int status);
        Task RemoveServiceIdOnAppointments(Guid serviceId);
        Task RemoveEmployeeIdOnAppointments(Guid serviceId);
    }
}
