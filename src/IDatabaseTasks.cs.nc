using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Infrastructure.Persistence;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace AllbertBackend.Infrastructure.Scheduler.Contracts
{
    public interface IDatabaseTasks
    {
        Task<int> SetPastAppointmentStatusToReview(AllbertBackendDBContext context);
        Task<int> DeletePastWorkDays(AllbertBackendDBContext context);
    }
}
