using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories
{
    public class AppointmentRepository : BaseRepository<Appointment>, IAppointmentRepository
    {
        private readonly AllbertBackendDBContext _context;
        public AppointmentRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }
        public async Task<bool> IsStatusSet(Guid appointmentId, int status)
        {
            var appointment = await _context.Appointments.FindAsync(appointmentId);
            if(appointment == null)
            {
                return false;
            }
            return appointment.Status == status;
        }
        public async Task<Appointment> SetAppointmentStatusAsync(Guid appointmentId, int status)
        {
            var appointment = await _context.Appointments.FindAsync(appointmentId);
            if(appointment == null)
            {
                return appointment;
            }
            appointment.Status = status;
            _context.Appointments.Update(appointment);
            await _context.SaveChangesAsync();
            return appointment;
        }
        public async Task RemoveServiceIdOnAppointments(Guid serviceId)
        {
            var appointments = await _context.Appointments
                .Where(a => a.ServiceId == serviceId)
                .ToListAsync();
            foreach(var appointment in appointments)
            {
                var entity = await _context.Appointments.FindAsync(appointment.Id);
                entity.ServiceId = null;
                entity.Status = 5;
                _context.Appointments.Update(entity);
            }
            await _context.SaveChangesAsync();
        }
        public async Task RemoveEmployeeIdOnAppointments(Guid employeeId)
        {
            var appointments = await _context.Appointments
                .Where(a => a.EmployeeId == employeeId)
                .ToListAsync();
            foreach (var appointment in appointments)
            {
                var entity = await _context.Appointments.FindAsync(appointment.Id);
                entity.EmployeeId = null;
                entity.Status = 5;
                _context.Appointments.Update(entity);
            }
            await _context.SaveChangesAsync();
        }
    }
}
