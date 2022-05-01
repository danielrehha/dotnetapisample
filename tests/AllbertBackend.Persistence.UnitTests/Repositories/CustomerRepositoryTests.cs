using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Persistence.Repositories;
using Xunit;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Persistance.UnitTests.Repositories
{
    public class CustomerRepositoryTests
    {
        [Fact]
        public async Task ShouldReturnCustomerActiveAppointmentList()
        {
            var options = new DbContextOptionsBuilder<AllbertBackendDBContext>()
                .UseInMemoryDatabase(Guid.NewGuid().ToString()).Options;

            var customerId = Guid.NewGuid();
            var employeeId = Guid.NewGuid();

            using (var context = new AllbertBackendDBContext(options))
            {
                context.Customers.Add(new AllbertBackend.Domain.Entities.Customer() { Id = customerId, });
                context.Employees.Add(new AllbertBackend.Domain.Entities.Employee() { Id = employeeId, });
                context.EmployeeInfos.Add(new EmployeeInfo() { EmployeeId = employeeId, });
                context.EmployeeSettings.Add(
                    new EmployeeSettings() { EmployeeId = employeeId, AllowedAppointmentDeletionDeadlineInHours = 1, AllowedBookingFrequencyInMinutes = 30, });
                context.Appointments.Add(new Appointment() { CustomerId = customerId, EmployeeId = employeeId,Status = 0});
                await context.SaveChangesAsync();
            }

            using(var context = new AllbertBackendDBContext(options))
            {
                var repository = new CustomerRepository(context);

                var result = await repository.GetCustomerAppointmentListAsync(customerId, "active");

                Assert.NotNull(result);
                Assert.NotNull(result.First().Employee);
                Assert.NotNull(result.First().Employee.EmployeeInfo);
                Assert.NotNull(result.First().Employee.Settings);
            }
        }

        [Fact]
        public async Task ShouldReturnCustomerClosedAppointmentList()
        {
            var options = new DbContextOptionsBuilder<AllbertBackendDBContext>()
                .UseInMemoryDatabase(Guid.NewGuid().ToString()).Options;

            var customerId = Guid.NewGuid();
            var employeeId = Guid.NewGuid();

            using (var context = new AllbertBackendDBContext(options))
            {
                context.Customers.Add(new AllbertBackend.Domain.Entities.Customer() { Id = customerId, });
                context.Employees.Add(new AllbertBackend.Domain.Entities.Employee() { Id = employeeId, });
                context.EmployeeInfos.Add(new EmployeeInfo() { EmployeeId = employeeId, });
                context.EmployeeSettings.Add(
                    new EmployeeSettings() { EmployeeId = employeeId, AllowedAppointmentDeletionDeadlineInHours = 1, AllowedBookingFrequencyInMinutes = 30, });
                context.Appointments.Add(new Appointment() { CustomerId = customerId, EmployeeId = employeeId, Status = 1 });
                context.Appointments.Add(new Appointment() { CustomerId = customerId, EmployeeId = employeeId, Status = 2 });
                await context.SaveChangesAsync();
            }

            using (var context = new AllbertBackendDBContext(options))
            {
                var repository = new CustomerRepository(context);

                var result = await repository.GetCustomerAppointmentListAsync(customerId, "closed");

                Assert.NotNull(result);
                Assert.True(result.Count == 2);
                Assert.NotNull(result.First().Employee);
                Assert.NotNull(result.First().Employee.EmployeeInfo);
                Assert.NotNull(result.First().Employee.Settings);
            }
        }
    }
}
