using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Contracts.Persistence.Appointment
{
    public interface IAppointmentRepository : IAsyncRepository<Domain.Entities.Appointment>
    {
        Task CreateAppointmentAsync(Domain.Entities.Appointment appointment);
        Task<Domain.Entities.Appointment> SetAppointmentStatusAsync(Guid appointmentId, int status);
        Task<bool> IsStatusSet(Guid appointmentId, int status);
        Task RemoveServiceIdOnAppointments(Guid serviceId);
        Task RemoveEmployeeIdOnAppointments(Guid serviceId);
    }
}
