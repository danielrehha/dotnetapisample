using AllbertBackend.Application.Contracts.Geocoding;
using AllbertBackend.Application.Internalization;
using AllbertBackend.Application.Notification;
using AllbertBackend.Contracts.AWS;
using AllbertBackend.Infrastructure.AWS;
using AllbertBackend.Infrastructure.Geocoding;
using AllbertBackend.Infrastructure.Internalization;
using AllbertBackend.Infrastructure.Notification;
using AllbertBackend.Infrastructure.Scheduler;
using AllbertBackend.Infrastructure.Scheduler.Contracts;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AllbertBackend.Infrastructure
{
    public static class InfrastructureServiceRegistration
    {
        public static IServiceCollection AddInfrastructureServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddScoped<IAWSS3ObjectUrlResolver, AWSS3ObjectUrlResolver>();
            services.AddScoped<IAWSS3Manager, AWSS3Manager>();
            services.AddTransient<IAWSS3Service, AWSS3Service>();
            services.AddScoped<IGeocodeService, GeocodeService>();
            services.AddSingleton<IDatabaseTasks, DatabaseTasks>();
            services.AddSingleton<IInternalizationService, InternalizationService>();
            services.AddScoped<INotificationService, NotificationService>();

            return services;
        }
    }
}
