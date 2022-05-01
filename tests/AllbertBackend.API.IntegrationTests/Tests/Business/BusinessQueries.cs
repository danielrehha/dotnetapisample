using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListQueryV2;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery;
using AllbertBackend.Domain.Dtos;
using Xunit;
using Xunit.Priority;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.Helpers;

namespace AllbertBackend.IntegrationTests.Tests
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class BusinessQueries : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;

        public BusinessQueries(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));
        }

        [Fact, Priority(1)]
        public async Task GetBusinessQuery()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;

            var response = await _client.GetAsync($"business/{firebaseUid}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.NotNull(commandResponse.Business.Address);
            Assert.NotNull(commandResponse.Business.Details);
            Assert.NotNull(commandResponse.Business.Contact);
            Assert.NotNull(commandResponse.Business.SubscriptionInfo);
            Assert.NotNull(commandResponse.Business.SubscriptionInfo.Subscription);
            Assert.NotNull(commandResponse.Business.Details);
            Assert.NotNull(commandResponse.Business.Address);
            Assert.NotNull(commandResponse.Business.Contact);
        }

        [Fact, Priority(2)]
        public async Task GetBusinessQueryNoData()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory, details: false, contact: false, address: false);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;

            var response = await _client.GetAsync($"business/{firebaseUid}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.Null(commandResponse.Business.Details);
            Assert.Null(commandResponse.Business.Address);
            Assert.Null(commandResponse.Business.Contact);
        }

        [Fact, Priority(3)]
        public async Task GetBusinessQueryNoContactNoAddress()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory, contact: false, address: false);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;

            var response = await _client.GetAsync($"business/{firebaseUid}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.NotNull(commandResponse.Business.Details);
            Assert.Null(commandResponse.Business.Address);
            Assert.Null(commandResponse.Business.Contact);
        }

        [Fact, Priority(4)]
        public async Task GetBusinessQueryNoContact()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory, contact: false);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;

            var response = await _client.GetAsync($"business/{firebaseUid}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.NotNull(commandResponse.Business.Details);
            Assert.NotNull(commandResponse.Business.Address);
            Assert.Null(commandResponse.Business.Contact);
        }

        [Fact, Priority(5)]
        public async Task GetBusinessQueryAllData()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;

            var response = await _client.GetAsync($"business/{firebaseUid}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.NotNull(commandResponse.Business.Details);
            Assert.NotNull(commandResponse.Business.Address);
            Assert.NotNull(commandResponse.Business.Contact);
        }

        [Fact, Priority(6)]
        public async Task GetBusinessActiveAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId,0);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=0");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }

        [Fact, Priority(7)]
        public async Task GetBusinessInReviewAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId, 1);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=1");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }

        [Fact, Priority(8)]
        public async Task GetBusinessReviewedCompletedAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId,2);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=2");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }
        
        [Fact, Priority(9)]
        public async Task GetBusinessReviewedUncompletedAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId,3);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=3");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }

        [Fact, Priority(10)]
        public async Task GetBusinessDeletedCustomerAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId,4);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=4");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }
        
        [Fact, Priority(11)]
        public async Task GetBusinessDeletedBusinessAppointmentList()
        {
            var aptId = Guid.NewGuid();

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId =DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertService(_factory);
            DatabaseManager.InsertAppointment(_factory, aptId, employeeId, customerId,5);

            var businessId = TestDataManager.BusinessId;
            
            var response = await _client.GetAsync($"business/{businessId}/appointments_v2?pageNumber=1&pageSize=10&status=5");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessAppointmentListQueryV2Response>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Appointments);
            Assert.True(commandResponse.Appointments.Count == 1);
            Assert.False(commandResponse.Appointments.HasNext);
            Assert.False(commandResponse.Appointments.HasPrevious);
        }

        [Fact, Priority(12)]
        public async Task GetBusinessServiceList()
        {
            var firstService = TestDataManager.FirstServiceCreate;
            firstService.Id = Guid.NewGuid();
            var secondService = TestDataManager.FirstServiceCreate;
            secondService.Id = Guid.NewGuid();
            secondService.Deleted = true;
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertEmployee(_factory);
            DatabaseManager.InsertService(_factory, firstService);
            DatabaseManager.InsertService(_factory, secondService);

            var businessId = TestDataManager.BusinessId;

            var response = await _client.GetAsync($"business/{businessId}/services");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetBusinessServiceListQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.True(commandResponse.Services.Count == 1);
        }

        [Fact, Priority(7)]
        public async Task GetBusinessEmployeeList()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertEmployee(_factory);
            DatabaseManager.InsertEmployee(_factory, deleted: true);

            var businessId = TestDataManager.BusinessId;

            var response = await _client.GetAsync($"business/{businessId}/employees");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetEmployeeListQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.True(commandResponse.Employees.Count == 1);
        }

        /*[Fact, Priority(8)]
        public async Task GetBusinessSchedule()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertEmployee(_factory);

            var firstWorkDay = TestDataManager.FirstWorkDayNoPause;
            var secondWorkDay = TestDataManager.SecondWorkDayWithPause;

            DatabaseManager.InsertWorkDay(_factory, firstWorkDay);
            DatabaseManager.InsertWorkDay(_factory, secondWorkDay);

            foreach (var pause in secondWorkDay.PauseList)
            {
                DatabaseManager.InsertWorkPause(_factory, pause);
            }

            var businessId = TestDataManager.BusinessId;

            var response = await _client.GetAsync($"business/{businessId}/schedule");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse =
                JsonSerializer.Deserialize<GetScheduleQueryResponse>(responseBody,
                    JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.True(commandResponse.Employees.Count == 1);
            Assert.NotNull(commandResponse.Employees[0].EmployeeInfo);
            Assert.True(commandResponse.Employees[0].WorkDayList.Count == 2);
            Assert.True((commandResponse.Employees[0].WorkDayList[1].PauseList.Count == 1 ||
                         commandResponse.Employees[0].WorkDayList[0].PauseList.Count == 1));
        }*/
    }
}