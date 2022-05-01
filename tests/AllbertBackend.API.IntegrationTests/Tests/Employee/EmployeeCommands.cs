using AutoMapper;
using FluentAssertions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand;
using AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.Helpers;
using AllbertBackend.IntegrationTests.Services.AWS;
using AllbertBackend.Application.Features.Global.Commands.UploadImageCommand;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.IntegrationTests.Tests.Employee
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class EmployeeCommands : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;
        private readonly AWSTestManager _awsTestManager;
        private readonly IMapper _mapper;

        public EmployeeCommands(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));

            _awsTestManager = new AWSTestManager(_factory.Configuration);
            _mapper = (IMapper)_factory.Services.GetService(typeof(IMapper));
        }

        [Fact, Priority(1)]
        public async Task UploadEmployeeAvatarCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);

            var awsBucketName = TestDataManager.AWSBucketName;

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            using var form = new MultipartFormDataContent();
            using var fileContent = new ByteArrayContent(fileBytes);
            fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("multipart/form-data");
            form.Add(fileContent, "file", Path.GetFileName(path));

            var response = await _client.PostAsync($"employee/{employeeId}/avatar", form);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UploadImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotNull(commandResponse.Image);
            Assert.NotNull(commandResponse.Image.PathUrl);
            Assert.True(commandResponse.Image.PathUrl.Contains(awsBucketName) == true);
        }

        [Fact, Priority(2)]
        public async Task DeleteEmployeeAvatarCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            await DatabaseManager.InsertEmployeeAvatar(_factory, employeeId);

            var response = await _client.DeleteAsync($"employee/{employeeId}/avatar");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.Null(commandResponse.ErrorMessage);
        }

        [Fact, Priority(3)]
        public async Task UploadEmployeePortfolioImageCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);

            var awsBucketName = TestDataManager.AWSBucketName;

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            using var form = new MultipartFormDataContent();
            using var fileContent = new ByteArrayContent(fileBytes);
            fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("multipart/form-data");
            form.Add(fileContent, "file", Path.GetFileName(path));

            var response = await _client.PostAsync($"employee/{employeeId}/portfolio", form);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UploadImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotNull(commandResponse.Image);
            Assert.NotNull(commandResponse.Image.PathUrl);
            Assert.True(commandResponse.Image.PathUrl.Contains(awsBucketName) == true);
        }

        [Fact, Priority(4)]
        public async Task DeleteEmployeePortfolioCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);

            var fileId = await DatabaseManager.InsertEmployeePortfolio(_factory, employeeId);

            var response = await _client.DeleteAsync($"employee/{employeeId}/portfolio/{fileId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.Null(commandResponse.ErrorMessage);
        }

        /*[Fact, Priority(8)]
        public async Task Should_InsertAllWorkDays()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertEmployee(_factory);

            var employeeId = TestDataManager.FirstEmployeeId;
            var firstWorkDay = TestDataManager.FirstWorkDayNoPause;
            var secondWorkDay = TestDataManager.SecondWorkDayWithPause;

            List<WorkDay> workDays = new() { firstWorkDay, secondWorkDay };
            var dto = new EmployeeScheduleUpdateDto()
            {
                WorkDayList = workDays,
            };

            var expectedWorkDayList = _mapper.Map<List<WorkDayVm>>(workDays);

            var httpContent = new StringContent(JsonSerializer.Serialize(dto), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"employee/{employeeId}/schedule", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateScheduleCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            commandResponse.WorkDayList.Should().BeEquivalentTo(expectedWorkDayList);
        }*/
    }
}
