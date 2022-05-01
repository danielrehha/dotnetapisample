using AutoMapper;
using System;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList;
using AllbertBackend.Application.Features.Employee.Queries.ServiceStartTimeListQuery;
using AllbertBackend.Domain.Entities;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.Helpers;
using AllbertBackend.IntegrationTests.Services.AWS;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.IntegrationTests.Tests.Employee
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class EmployeeQueries : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;
        private readonly AWSTestManager _awsTestManager;
        private readonly IMapper _mapper;

        public EmployeeQueries(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));

            _awsTestManager = new AWSTestManager(_factory.Configuration);
            _mapper = (IMapper)_factory.Services.GetService(typeof(IMapper));
        }

        [Fact, Priority(1)]
        public async Task Should_ReturnCustomerReviewList()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);

            var review = new CustomerReview()
            {
                CustomerId = customerId,
                EmployeeId = employeeId,
                Rating = 5,
                Comment = "Comment",
                CreatedOn = DateTime.UtcNow,
            };
            
            DatabaseManager.InsertCustomerReview(_factory, review);

            var response = await _client.GetAsync($"employee/{employeeId}/reviews?pageNumber=1&pageSize=10");
            var responseBody = await response.Content.ReadAsStringAsync();
            
            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<GetCustomerReviewListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);
            
            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.CustomerReviews);
            Assert.True(commandResponse.CustomerReviews.Count == 1);
            Assert.NotNull(commandResponse.CustomerReviews.First().Customer);
            Assert.NotNull(commandResponse.CustomerReviews.First().Customer.CustomerInfo);
            Assert.NotNull(commandResponse.CustomerReviews.First().Customer.CustomerInfo.FirstName);
        }

        /*[Fact, Priority(1)]
        public async Task Should_GetServiceStartTimes_AllDay_NoPause()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 50;

            var workDay = TestDataManager.FirstWorkDayNoPause;

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.Last() == workDay.EndTime.Subtract(TimeSpan.FromHours(1)));
        }

        [Fact, Priority(2)]
        public async Task Should_GetServiceStartTimes_OneAppointmentAtStart_NoPause()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 50;

            var workDay = TestDataManager.FirstWorkDayNoPause;
            var appointment = TestDataManager.FirstEmployeeActiveAppointment;
            appointment.StartDate = workDay.StartTime;
            appointment.EndDate = appointment.StartDate.AddMinutes(service.Duration);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointment);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime.AddHours(1));
        }

        [Fact, Priority(3)]
        public async Task Should_GetServiceStartTimes_OneAppointmentInMiddle_NoPause()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 50;

            var workDay = TestDataManager.FirstWorkDayNoPause;
            var appointment = TestDataManager.FirstEmployeeActiveAppointment;
            appointment.StartDate = workDay.StartTime.AddHours(1);
            appointment.EndDate = appointment.StartDate.AddMinutes(service.Duration);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointment);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime);
            Assert.True(commandResponse.StartTimes[1] == workDay.StartTime.AddHours(2));
        }

        [Fact, Priority(4)]
        public async Task Should_GetServiceStartTimes_30MinService_OneAppointmentInMiddle_NoPause()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 30;

            var workDay = TestDataManager.FirstWorkDayNoPause;
            var appointment = TestDataManager.FirstEmployeeActiveAppointment;
            appointment.StartDate = workDay.StartTime.AddHours(1);
            appointment.EndDate = appointment.StartDate.AddMinutes(service.Duration);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointment);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime);
            Assert.True(commandResponse.StartTimes[2] == workDay.StartTime.AddHours(1).AddMinutes(30));
        }

        [Fact, Priority(5)]
        public async Task Should_GetServiceStartTimes_15MinService_OneAppointmentInMiddle_NoPause()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 15;

            var workDay = TestDataManager.FirstWorkDayNoPause;
            var appointment = TestDataManager.FirstEmployeeActiveAppointment;
            appointment.StartDate = workDay.StartTime.AddHours(1);
            appointment.EndDate = appointment.StartDate.AddMinutes(service.Duration);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertCustomer(_factory);
            DatabaseManager.InsertAppointment(_factory, appointment);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime);
            Assert.True(commandResponse.StartTimes[2] == workDay.StartTime.AddHours(1).AddMinutes(30));
        }

        [Fact, Priority(6)]
        public async Task Should_GetServiceStartTimes_15MinService_NoAppointments_OnePauseInMiddle()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 15;

            var workDay = TestDataManager.FirstWorkDayWithPause;
            var workPause = workDay.PauseList[0];
            workPause.StartTime = workDay.StartTime.AddHours(3);
            workPause.EndTime = workPause.StartTime.AddHours(1);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertWorkPause(_factory, workPause);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime);
            Assert.True(commandResponse.StartTimes.Where(s => s.Hour == 12).ToList().Count == 0);
        }

        [Fact, Priority(7)]
        public async Task Should_GetServiceStartTimes_50MinService_NoAppointments_OnePauseInMiddle()
        {
            var employeeId = TestDataManager.FirstEmployeeId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoWithOneService;
            var serviceId = TestDataManager.FirstServiceId;
            var service = TestDataManager.FirstServiceCreate;
            service.Duration = 50;

            var workDay = TestDataManager.FirstWorkDayWithPause;
            var workPause = workDay.PauseList[0];
            workPause.StartTime = workDay.StartTime.AddHours(3);
            workPause.EndTime = workPause.StartTime.AddHours(1);

            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory, service);
            DatabaseManager.InsertEmployee(_factory, employeeInfo);
            DatabaseManager.InsertWorkDay(_factory, workDay);
            DatabaseManager.InsertWorkPause(_factory, workPause);

            var response = await _client.GetAsync($"employee/{employeeId}/dates_v2/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<ServiceStartTimeListQueryResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotEmpty(commandResponse.StartTimes);
            Assert.True(commandResponse.StartTimes.First() == workDay.StartTime);
            Assert.True(commandResponse.StartTimes.Where(s => s.Hour == 12).ToList().Count == 0);
            Assert.True(commandResponse.StartTimes.Where(s => s.Hour == 11 && s.Minute == 30).ToList().Count == 0);
        }*/
    }
}
