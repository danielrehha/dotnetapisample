using System.Diagnostics;
using System.IO;
using System.Linq;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.IntegrationTests.DataManager;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AllbertBackend.API.IntegrationTests.DatabasePopulator
{
    public class DatabasePopulatorWebApplicationFactory<TStartup> : WebApplicationFactory<TStartup> where TStartup : class
    {
        public IConfiguration Configuration { get; private set; }
        public DbContext Context { get; set; }
        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            var directory = Directory.GetCurrentDirectory();
            var settingsFile = "database_populator_settings.json";
            var testDataFile = "TestData/testdata.json";

            builder.ConfigureAppConfiguration(conf =>
            {
                Configuration = conf.AddJsonFile(Path.Combine(directory, settingsFile)).Build();
                TestDataManager.Configuration = conf.AddJsonFile(Path.Combine(directory, testDataFile)).Build();
            });

            builder.ConfigureServices(services =>
            {
                var descriptor = services.SingleOrDefault(
                    d => d.ServiceType ==
                        typeof(DbContextOptions<AllbertBackendDBContext>));

                var configurationDescriptor = services.SingleOrDefault(
                    d => d.ServiceType == typeof(IConfiguration));

                if (descriptor != null)
                {
                    services.Remove(descriptor);
                }

                if (configurationDescriptor != null)
                {
                    services.Remove(configurationDescriptor);
                }

                services.AddSingleton(Configuration);

                services.AddDbContext<AllbertBackendDBContext>(options =>
                {
                    var connectionString = Configuration.GetConnectionString("SqlConnection");
                    options.UseNpgsql(connectionString);
                    options.LogTo(message => Debug.WriteLine(message));
                    options.EnableSensitiveDataLogging();
                });

                var sp = services.BuildServiceProvider();

                using var scope = sp.CreateScope();
            });
        }
    }
}