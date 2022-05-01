using System.Threading.Tasks;
using AllbertBackend.Infrastructure.Persistence;

namespace AllbertBackend.Infrastructure.Scheduler.Contracts
{
    public interface IDatabaseTasks
    {
        Task<int> SetPastAppointmentStatusToReview(AllbertBackendDBContext context);
        Task<int> DeletePastWorkDays(AllbertBackendDBContext context);
        Task InitializeSubscriptionData(AllbertBackendDBContext context);
    }
}
