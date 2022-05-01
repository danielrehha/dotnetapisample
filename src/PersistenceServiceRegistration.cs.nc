using AllbertBackend.Infrastructure.Persistence;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Persistence.Repositories;
using MediatR;
using AllbertBackend.Application.Contracts.Persistence.Timeslot;
using AllbertBackend.Application.Contracts.SessionManagement;
using AllbertBackend.Persistence.SessionManagement;
using AllbertBackend.Application.Contracts.Persistence.Shared;
namespace AllbertBackend.Persistence
{
    public static class PersistenceServiceRegistration
    {
        public static IServiceCollection AddPersistenceServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<AllbertBackendDBContext>(options => options.UseNpgsql(configuration.GetConnectionString("DbProduction")));
            services.AddScoped(typeof(IAsyncRepository<>), typeof(BaseRepository<>));
            services.AddScoped<IBusinessRepository, BusinessRepository>();
            services.AddScoped<IEmployeeRepository, EmployeeRepository>();
            services.AddScoped<IServiceRepository, ServiceRepository>();
            services.AddScoped<IAvailableTimeslotRepository, AvailableTimeslotRepository>();
            services.AddScoped<IAppointmentRepository, AppointmentRepository>();
            services.AddScoped<ICustomerRepository, CustomerRepository>();
            services.AddScoped<ISessionManager, SessionManager>();
            services.AddTransient<IEventRepository, EventRepository>();
            return services;
        }
    }
}
