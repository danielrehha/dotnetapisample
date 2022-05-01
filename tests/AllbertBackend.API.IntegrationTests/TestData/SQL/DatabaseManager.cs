using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.IO;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.API.IntegrationTests.DatabasePopulator;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.TestData.SqlQueries;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Domain.Common;
using AllbertBackend.Infrastructure.AWS;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.IntegrationTests.DataManager.RandomData;
using FluentAssertions.Extensions;
using Microsoft.AspNetCore.Mvc.Testing;

namespace AllbertBackend.IntegrationTests.Helpers
{
    public static class DatabaseManager
    {
        public static void InitializeDatabase(WebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                context.Database.EnsureCreated();

                context.Database.ExecuteSqlRaw(SqlCommandManager.ClearSchema());

                context.Database.Migrate();

                context.Database.ExecuteSqlRaw(SqlCommandManager.InsertSubscriptionCommand());
            }
        }

        public static void InsertBusiness(WebApplicationFactory<Startup> factory, string firebaseId = null,
            bool details = true,
            bool address = true, bool contact = true)
        {
            TestContext.BusinessId = Guid.NewGuid();

            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertBusinessCommand(firebaseId));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertSubscriptionInfoCommand());
                    if (details)
                    {
                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertBusinessDetailsCommand());
                    }

                    if (address)
                    {
                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertBusinessAddressCommand());
                    }

                    if (contact)
                    {
                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertBusinessContactCommand());
                    }
                }
                else
                {
                    context.Businesses.Add(TestDataManager.Business);
                    context.BusinessDetails.Add(TestDataManager.BusinessDetailsCreate);
                    context.BusinessAddresses.Add(TestDataManager.BusinessAddressCreate);
                    context.BusinessContacts.Add(TestDataManager.BusinessContactCreate);
                    context.SubscriptionInfos.Add(TestDataManager.SubscriptionInfo);
                    context.SaveChanges();
                }
            }
        }

        public static Guid InsertEmployee(WebApplicationFactory<Startup> factory, bool deleted = false)
        {
            var employeeId = Guid.NewGuid();
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeCommand(employeeId, deleted));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeInfoCommand(employeeId));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeSettingsCommand(employeeId));
                }
                else
                {
                    context.Employees.Add(TestDataManager.Employee);
                    context.EmployeeInfos.Add(TestDataManager.FirstEmployeeInfoCreate);
                    context.SaveChanges();
                }
            }

            return employeeId;
        }

        public static void InsertService(WebApplicationFactory<Startup> factory, bool deleted = false)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertServiceCommand(deleted));
                }
                else
                {
                    context.Services.Add(TestDataManager.FirstServiceCreate);
                    context.SaveChanges();
                }
            }
        }

        public static void InsertService(WebApplicationFactory<Startup> factory, Service service)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertServiceCommand(service));
                }
                else
                {
                    context.Services.Add(TestDataManager.FirstServiceCreate);
                    context.SaveChanges();
                }
            }
        }

        public static void InsertAppointment(WebApplicationFactory<Startup> factory, Guid id, Guid employeeId,
            Guid customerId,
            int appointmentStatus)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(
                        SqlCommandManager.InsertAppointmentCommand(id, employeeId, customerId, appointmentStatus));
                }
                else
                {
                    var appointment = TestDataManager.FirstEmployeeActiveAppointment;
                    context.Appointments.Add(TestDataManager.FirstEmployeeActiveAppointment);
                    context.SaveChanges();
                }
            }
        }

        public static Guid InsertCustomer(WebApplicationFactory<Startup> factory)
        {
            var customerId = Guid.NewGuid();
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerCommand(customerId));
                context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerInfoCommand(customerId));
            }

            return customerId;
        }

        public static async Task<string> InsertBusinessAvatar(CustomWebApplicationFactory<Startup> factory)
        {
            string fileKey = Guid.NewGuid().ToString();

            var awsService = new AWSS3Service(new AWSS3Manager(factory.Configuration), new AWSS3ObjectUrlResolver());

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image1.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            var fileUrl = await awsService.UploadPublicImageAsync(fileBytes,
                StaticNamingContext.AWSAvatarImagesFolderPrefix, fileKey);

            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertBusinessAvatarCommand(fileUrl));
                }
                else
                {
                    context.Employees.Add(TestDataManager.Employee);
                    context.EmployeeInfos.Add(TestDataManager.FirstEmployeeInfoCreate);
                    context.SaveChanges();
                }
            }

            return fileKey;
        }

        public static async Task<Guid> InsertBusinessPortfolio(CustomWebApplicationFactory<Startup> factory)
        {
            var awsService = new AWSS3Service(new AWSS3Manager(factory.Configuration), new AWSS3ObjectUrlResolver());

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image1.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            var fileUrl = await awsService.UploadPublicImageAsync(fileBytes,
                StaticNamingContext.AWSPortfolioImagesFolderPrefix, "image1.jpg");

            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(
                        SqlCommandManager.InsertBusinessPortfolioCommand(fileUrl, out Guid fileId));
                    return fileId;
                }
                else
                {
                    context.Employees.Add(TestDataManager.Employee);
                    context.EmployeeInfos.Add(TestDataManager.FirstEmployeeInfoCreate);
                    context.SaveChanges();
                }
            }

            return Guid.NewGuid();
        }

        public static async Task InsertEmployeeAvatar(CustomWebApplicationFactory<Startup> factory, Guid employeeId)
        {
            var awsService = new AWSS3Service(new AWSS3Manager(factory.Configuration), new AWSS3ObjectUrlResolver());

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            var fileUrl = await awsService.UploadPublicImageAsync(fileBytes,
                StaticNamingContext.AWSAvatarImagesFolderPrefix, "image2.jpg");

            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeAvatarCommand(employeeId, fileUrl));
                }
                else
                {
                    context.Employees.Add(TestDataManager.Employee);
                    context.EmployeeInfos.Add(TestDataManager.FirstEmployeeInfoCreate);
                    context.SaveChanges();
                }
            }
        }

        public static async Task<Guid> InsertEmployeePortfolio(CustomWebApplicationFactory<Startup> factory,
            Guid employeeId)
        {
            var awsService = new AWSS3Service(new AWSS3Manager(factory.Configuration), new AWSS3ObjectUrlResolver());

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            var fileUrl = await awsService.UploadPublicImageAsync(fileBytes,
                StaticNamingContext.AWSPortfolioImagesFolderPrefix, "image2.jpg");

            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                if (TestContext.UseDirectDbConnection)
                {
                    context.Database.ExecuteSqlRaw(
                        SqlCommandManager.InsertEmployeePortfolioCommand(employeeId, fileUrl, out Guid fileId));
                    return fileId;
                }
                else
                {
                    context.Employees.Add(TestDataManager.Employee);
                    context.EmployeeInfos.Add(TestDataManager.FirstEmployeeInfoCreate);
                    context.SaveChanges();
                }
            }

            return Guid.NewGuid();
        }

        public static void InsertCustomerReview(WebApplicationFactory<Startup> factory,
            CustomerReview review)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();
                context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerReview(review));
            }
        }

        public static void InsertRandomEmployees(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                for (int i = 0; i < DatabasePopulatorSettings.EmployeeCount; i++)
                {
                    var id = Guid.NewGuid();

                    Random rand = new Random(DateTime.Now.Millisecond);

                    var firstName = RandomData.FirstName();
                    var lastName = RandomData.LastName();
                    var jobType = RandomData.JobType();

                    var employee = new Employee()
                    {
                        Id = id,
                        BusinessId = (Guid) TestContext.BusinessId,
                        Enabled = rand.Next(0, 1) == 0,
                        Deleted = false,
                        CreatedOn = DateTime.UtcNow,
                    };
                    var employeeInfo = new EmployeeInfo()
                    {
                        EmployeeId = id,
                        FirstName = firstName,
                        LastName = lastName,
                        Job = jobType,
                        Description = $"My name is {firstName} {lastName}, and my job is {jobType}.",
                        Email = $"{firstName.ToLower()}.{lastName.ToLower()}@gmail.com",
                        Phone = "70" + rand.Next(1111111, 9999999),
                        PhoneIso = "hu",
                        Color = RandomData.Color(),
                    };
                    var employeeSettings = new EmployeeSettings()
                    {
                        EmployeeId = id,
                        AllowedBookingFrequencyInMinutes = rand.Next(0, 1) == 0 ? 15 : 30,
                        AllowedAppointmentDeletionDeadlineInHours = rand.Next(1, 4),
                        AllowedAppointmentCreationDeadlineInHours = rand.Next(1, 4),
                        MinAllowedCustomerBookingIndex = rand.Next(0, 4),
                    };

                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeCommand(employee));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeInfoCommand(employeeInfo));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeSettingsCommand(employeeSettings));

                    DatabasePopulatorSettings.EmployeeIds.Add(id);
                }
            }
        }

        public static void InsertRandomServices(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                for (int i = 0; i < DatabasePopulatorSettings.ServiceCount; i++)
                {
                    var id = Guid.NewGuid();

                    Random rand = new Random(DateTime.Now.Millisecond);

                    var serviceName = RandomData.ServiceName();

                    var service = new Service()
                    {
                        Id = id,
                        BusinessId = (Guid) TestContext.BusinessId,
                        Name = serviceName,
                        Cost = rand.Next(0, 10000),
                        Currency = rand.Next(0, 1) == 0 ? "HUF" : "EUR",
                        Duration = rand.Next(0, 1) == 0 ? 15 : 30,
                        Enabled = rand.Next(0, 1) == 0,
                        Deleted = false,
                        CreatedOn = DateTime.UtcNow,
                    };

                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertServiceCommand(service));

                    DatabasePopulatorSettings.ServiceIds.Add(id);
                }
            }
        }

        public static void InsertRandomCustomers(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                for (int i = 0; i < DatabasePopulatorSettings.CustomerCount; i++)
                {
                    var id = Guid.NewGuid();

                    Random rand = new Random(DateTime.Now.Millisecond);

                    var firstName = RandomData.FirstName();
                    var lastName = RandomData.LastName();

                    var customer = new Customer()
                    {
                        Id = id,
                        FirebaseUid = Guid.NewGuid().ToString(),
                        Deleted = false,
                        CreatedOn = DateTime.UtcNow,
                    };
                    var customerInfo = new CustomerInfo()
                    {
                        CustomerId = id,
                        FirstName = firstName,
                        LastName = lastName,
                        Email = $"{firstName.ToLower()}.{lastName.ToLower()}@gmail.com",
                        Phone = "70" + rand.Next(1111111, 9999999),
                        PhoneIso = "hu",
                    };

                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerCommand(customer));
                    context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerInfoCommand(customerInfo));

                    DatabasePopulatorSettings.CustomerIds.Add(id);
                }
            }
        }

        public static void InsertRandomEmployeeServices(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                var rand = new Random(DateTime.UtcNow.Nanosecond());

                foreach (var empId in DatabasePopulatorSettings.EmployeeIds)
                {
                    foreach (var id in DatabasePopulatorSettings.ServiceIds)
                    {
                        rand.Next();
                        int newRand = rand.Next();
                        var newRandObj = new Random(newRand);

                        bool insert = newRandObj.Next(0, 99999) % 2 == 0;

                        if (!insert)
                        {
                            continue;
                        }

                        var employeeService = new EmployeeService()
                        {
                            EmployeeId = empId,
                            ServiceId = id,
                        };

                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertEmployeeServiceCommand(employeeService));
                    }
                }
            }
        }

        public static void InsertRandomReviews(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                var rand = new Random(DateTime.UtcNow.Nanosecond());

                foreach (var customerId in DatabasePopulatorSettings.CustomerIds)
                {
                    foreach (var id in DatabasePopulatorSettings.EmployeeIds)
                    {
                        rand.Next();
                        int newRand = rand.Next();
                        var newRandObj = new Random(newRand);

                        bool insert = newRandObj.Next(0, 100) % 2 == 0;

                        if (!insert)
                        {
                            continue;
                        }

                        var creationOffset = new TimeSpan(newRandObj.Next(0, 17520), newRandObj.Next(0, 60), 0);

                        var creationDate = DateTime.Now.Subtract(creationOffset);

                        var review = new CustomerReview()
                        {
                            EmployeeId = id,
                            CustomerId = customerId,
                            Comment = newRandObj.Next(1, 5) == 3 ? "This is a sample review." : "",
                            CreatedOn = creationDate,
                            Rating = newRandObj.Next(1, 5),
                        };

                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertCustomerReviewCommand(review));
                    }
                }
            }
        }

        public static void InsertRandomAppointments(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            var scopeFactory = factory.Services.GetService<IServiceScopeFactory>();
            using (var scope = scopeFactory.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<AllbertBackendDBContext>();

                var rand = new Random(DateTime.UtcNow.Nanosecond());

                for (int i = 0; i < DatabasePopulatorSettings.AppointmentCount; i++)
                {
                    foreach (var id in DatabasePopulatorSettings.EmployeeIds)
                    {
                        rand.Next();
                        int newRand = rand.Next();
                        var newRandObj = new Random(newRand);

                        bool insert = newRandObj.Next(0, 99999) % 2 == 0;

                        if (!insert)
                        {
                            continue;
                        }

                        var customerId =
                            DatabasePopulatorSettings.CustomerIds[
                                rand.Next(0, DatabasePopulatorSettings.CustomerIds.Count - 1)];

                        var appointmentOffset = new TimeSpan(newRandObj.Next(0, 8760), newRandObj.Next(0, 60), 0);

                        var isPast = newRandObj.Next(0, 1000) >= 500;
                        var startDate = isPast
                            ? DateTime.Now.Subtract(appointmentOffset)
                            : DateTime.Now.Add(appointmentOffset);
                        var endDate = startDate.AddMinutes(30);

                        var appointment = new Appointment()
                        {
                            Id = Guid.NewGuid(),
                            BusinessId = (Guid) TestContext.BusinessId,
                            EmployeeId = id,
                            CustomerId = customerId,
                            StartDate = startDate,
                            EndDate = endDate,
                            Status = newRandObj.Next(0, 5),
                            ServiceId = DatabasePopulatorSettings.ServiceIds[
                                newRandObj.Next(0, DatabasePopulatorSettings.ServiceIds.Count - 1)],
                        };

                        context.Database.ExecuteSqlRaw(SqlCommandManager.InsertAppointmentCommand(appointment));
                    }
                }
            }
        }
    }
}