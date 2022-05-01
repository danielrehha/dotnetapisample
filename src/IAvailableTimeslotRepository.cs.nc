using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence.Timeslot
{
    public interface IAvailableTimeslotRepository : IAsyncRepository<AvailableTimeslot>
    {
        Task InsertAppointmentAsync(Appointment appointment);
        Task ExtendTimeslotByCancelledAppointmentAsync(Appointment appointment);
    }
}
