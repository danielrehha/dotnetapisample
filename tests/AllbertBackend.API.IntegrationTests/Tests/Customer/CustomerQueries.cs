using System;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.Helpers;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.IntegrationTests.Tests.Customer
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class CustomerQueries : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;

        public CustomerQueries(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));
        }

        [Fact, Priority(1)]
        public async Task GetCustomerActiveAppointmentList()
        {
            var appointmentId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            DatabaseManager.InsertService(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointmentId, employeeId, customerId,0);

            var response = await _client.GetAsync($"customer/{customerId}/appointments?status=active");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetCustomerAppointmentListQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.NotNull(commandResponse.Appointments.First().Employee);
            Assert.NotNull(commandResponse.Appointments.First().Employee.EmployeeInfo);
            Assert.NotNull(commandResponse.Appointments.First().Employee.Settings);
        }

        [Fact, Priority(2)]
        public async Task GetCustomerClosedAppointmentList()
        {
            var appointmentId = Guid.NewGuid();
            var secondAppointmentId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            DatabaseManager.InsertService(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointmentId, employeeId, customerId,2);
            DatabaseManager.InsertAppointment(_factory, secondAppointmentId, employeeId, customerId,3);

            var response = await _client.GetAsync($"customer/{customerId}/appointments?status=closed");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetCustomerAppointmentListQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 2);
            Assert.NotNull(commandResponse.Appointments.First().Employee);
            Assert.NotNull(commandResponse.Appointments.First().Employee.EmployeeInfo);
            Assert.NotNull(commandResponse.Appointments.First().Employee.Settings);
        }
    }
}