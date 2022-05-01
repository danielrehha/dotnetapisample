using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace AllbertBackend.API
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)

                .ConfigureWebHostDefaults(webBuilder =>
                {
                    /*                    webBuilder
                                        .UseKestrel()
                                        .UseContentRoot(Directory.GetCurrentDirectory())
                                        .UseIISIntegration()
                                        .UseStartup<Startup>()
                                        .UseUrls("https://localhost:5001");*/
                    webBuilder.UseStartup<Startup>();
                });
    }
}
