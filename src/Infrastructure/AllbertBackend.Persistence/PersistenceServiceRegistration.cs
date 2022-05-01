using System;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Appointment;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Contracts.Persistence.Shared;
using AllbertBackend.Application.Contracts.ReadOnly.Statistics;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using AllbertBackend.Contracts.SessionManagement;
using AllbertBackend.Persistence.Repositories;
using AllbertBackend.Persistence.Repositories.Statistics;
using AllbertBackend.Persistence.SessionManagement;

namespace AllbertBackend.Infrastructure.Persistence
{
    public static class PersistenceServiceRegistration
    {
        public static IServiceCollection AddPersistenceServices(this IServiceCollection services, IConfiguration configuration)
        {
            Console.WriteLine(configuration.GetConnectionString("SqlConnection"));
            services.AddDbContext<AllbertBackendDBContext>(options => options.UseNpgsql(configuration.GetConnectionString("SqlConnection")));
            services.AddScoped(typeof(IAsyncRepository<>), typeof(BaseRepository<>));
            services.AddScoped<IBusinessRepository, BusinessRepository>();
            services.AddScoped<IEmployeeRepository, EmployeeRepository>();
            services.AddScoped<IServiceRepository, ServiceRepository>();
            services.AddScoped<IAppointmentRepository, AppointmentRepository>();
            services.AddScoped<ICustomerRepository, CustomerRepository>();
            
            services.AddScoped<IBusinessStatisticsClient, BusinessStatisticsClient>();
            
            services.AddScoped<ISessionManager, SessionManager>();
            services.AddTransient<IEventRepository, EventRepository>();

            return services;
        }
    }
}
