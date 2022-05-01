using System;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Infrastructure.Scheduler.Contracts;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Z.EntityFramework.Plus;

namespace AllbertBackend.Infrastructure.Scheduler
{
    public class DatabaseTasks : IDatabaseTasks
    {
        public async Task<int> DeletePastWorkDays(AllbertBackendDBContext context)
        {
            var result = await context.WorkDays
                .Where(wd => wd.EndTime.Year < DateTime.UtcNow.Year || wd.EndTime.Year == DateTime.UtcNow.Year && wd.EndTime.Month <= DateTime.UtcNow.Month && wd.EndTime.Day < DateTime.UtcNow.Day)
                .DeleteAsync();

            return result;
        }

        public async Task<int> SetPastAppointmentStatusToReview(AllbertBackendDBContext context)
        {
            var result = await context.Appointments
                .Where(apt => apt.Status == 0 && apt.EndDate < DateTime.UtcNow)
                .UpdateAsync((apt) => new AllbertBackend.Domain.Entities.Appointment() { Status = 1 });

            return result;
        }

        public async Task InitializeSubscriptionData(AllbertBackendDBContext context)
        {
            await context.Database.EnsureCreatedAsync();
            
            if (!context.Subscriptions.Any())
            {
                await context.Database.ExecuteSqlRawAsync(DatabaseSetupCommands.ClearSchema());
                await context.Database.MigrateAsync();
                await context.Database.ExecuteSqlRawAsync(DatabaseSetupCommands.InsertSubscriptionCommand());
            }
        }
    }
}
