using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using AllbertBackend.Application.Exceptions;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Persistence.Helpers;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories
{
    public class AvailableTimeslotRepository : BaseRepository<AvailableTimeslot>, IAvailableTimeslotRepository
    {
        private readonly AllbertBackendDBContext _context;
        public AvailableTimeslotRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }
        public async Task ExtendTimeslotByCancelledAppointmentAsync(Appointment appointment)
        {
            var timeslots = await _context.AvailableTimeslots.Where(t => t.EmployeeId == appointment.EmployeeId).ToListAsync();
            foreach(var timeslot in timeslots)
            {
                if(timeslot.EndDate == appointment.StartDate)
                {
                    timeslot.EndDate = appointment.EndDate;
                    _context.AvailableTimeslots.Update(timeslot);
                    await _context.SaveChangesAsync();
                    return;
                }
                if(timeslot.StartDate == appointment.EndDate)
                {
                    timeslot.StartDate = appointment.StartDate;
                    _context.AvailableTimeslots.Update(timeslot);
                    await _context.SaveChangesAsync();
                    return;
                }
            }
            var newTimeslot = new AvailableTimeslot
            {
                Id = Guid.NewGuid(),
                EmployeeId = (Guid)appointment.EmployeeId,
                StartDate = appointment.StartDate,
                EndDate = appointment.EndDate,
            };
            await _context.AvailableTimeslots.AddAsync(newTimeslot);
            await _context.SaveChangesAsync();
        }
        public async Task InsertAppointmentAsync(Appointment appointment)
        {
            var timeslotList = await _context.AvailableTimeslots
                .Where(t => t.EmployeeId == appointment.EmployeeId)
                .ToListAsync();
            var timeslot = timeslotList.FindTimeslotOrNull(appointment);
            if(timeslot == null)
            {
                throw new InsertAppointmentException("Could not find corresponding available timeslot. Try again later.");
            }
            var service = await _context.Services.FindAsync(appointment.ServiceId);
            var timeslotSecond = new AvailableTimeslot
            {
                Id = Guid.NewGuid(),
                EmployeeId = (Guid)appointment.EmployeeId,
                StartDate = appointment.EndDate.AddMinutes(service.PauseAfterInMinutes),
                EndDate = timeslot.EndDate,
            };
            timeslot.EndDate = appointment.StartDate;
            if(timeslot.StartDate >= timeslot.EndDate)
            {
                _context.AvailableTimeslots.Remove(timeslot);
            } else
            {
                _context.AvailableTimeslots.Update(timeslot);
            }
            if(!(timeslotSecond.StartDate >= timeslotSecond.EndDate))
            {
                await _context.AvailableTimeslots.AddAsync(timeslotSecond);
            }
            await _context.SaveChangesAsync();
        }
    }
}
