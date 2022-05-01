using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Infrastructure.Scheduler;
using Xunit;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Infrastructure.UnitTests.Scheduler
{
    public class DatabaseTasksUnitTests
    {
        [Fact]
        public async Task ShouldDeletePastWorkDays()
        {
            var options = new DbContextOptionsBuilder<AllbertBackendDBContext>()
                .UseInMemoryDatabase(Guid.NewGuid().ToString()).Options;

            var expected = new List<WorkDay>() {
                new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day).Subtract(TimeSpan.FromDays(1)) },
                 new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day).Subtract(TimeSpan.FromDays(400)) }
            };

            using (var context = new AllbertBackendDBContext(options))
            {
                context.WorkDays.Add(new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day) });
                context.WorkDays.Add(new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day).AddMonths(1) });
                context.WorkDays.Add(new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day).AddMinutes(1) });
                context.WorkDays.AddRange(expected);
                context.WorkDays.Add(new WorkDay() { EndTime = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, DateTime.UtcNow.Day).AddDays(1) });

                await context.SaveChangesAsync();
            }

            using (var context = new AllbertBackendDBContext(options))
            {
                var databaseTasks = new DatabaseTasks();

                var result = await databaseTasks.DeletePastWorkDays(context);

                Assert.Equal(expected.Count, result);
            }
        }
    }
}
