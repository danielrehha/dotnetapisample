using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Infrastructure.Scheduler.Contracts;
using FluentScheduler;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Diagnostics;
namespace AllbertBackend.Infrastructure.Service
{
    public class TaskScheduler : Registry
    {
        public TaskScheduler(IServiceCollection services)
        {
            Schedule(async () =>
            {
                var sp = services.BuildServiceProvider();
                using var scope = sp.CreateScope();
                var dbContext = scope.ServiceProvider.GetRequiredService<AllbertBackendDBContext>();
                var appointmentTasks = scope.ServiceProvider.GetRequiredService<IDatabaseTasks>();
                try
                {
                    await appointmentTasks.SetPastAppointmentStatusToReview(dbContext);
                } catch (Exception e)
                {
                    Trace.TraceError(e.Message);
                }
            }).ToRunNow().AndEvery(30).Seconds();
            Schedule(async () =>
            {
                var sp = services.BuildServiceProvider();
                using var scope = sp.CreateScope();
                var dbContext = scope.ServiceProvider.GetRequiredService<AllbertBackendDBContext>();
                var appointmentTasks = scope.ServiceProvider.GetRequiredService<IDatabaseTasks>();
                try
                {
                    await appointmentTasks.DeletePastWorkDays(dbContext);
                } catch (Exception e)
                {
                    Trace.TraceError(e.Message);
                }
            }).ToRunNow().AndEvery(1).Minutes();
        }
    }
}
