using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Xunit;
using Xunit.Priority;
using System.Net.Http.Headers;
using System.IO;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Business.Commands.CreateBusinessV2;
using AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.CreateServiceCommand;
using AllbertBackend.Application.Features.Business.Commands.DeleteEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.DeleteServiceCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateAddress;
using AllbertBackend.Application.Features.Business.Commands.UpdateContact;
using AllbertBackend.Application.Features.Business.Commands.UpdateDetails;
using AllbertBackend.Application.Features.Business.Commands.UpdateEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateServiceCommand;
using AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager;
using AllbertBackend.IntegrationTests.Helpers;
using AllbertBackend.IntegrationTests.Services.AWS;
using AllbertBackend.Application.Features.Global.Commands.UploadImageCommand;

namespace AllbertBackend.IntegrationTests.Tests
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class BusinessCommands : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;
        private readonly AWSTestManager _awsTestManager;

        public BusinessCommands(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));

            _awsTestManager = new AWSTestManager(_factory.Configuration);
        }

        [Fact, Priority(1)]
        public async Task CreateBusinessCommandV2()
        {
            DatabaseManager.InitializeDatabase(_factory);

            var firebaseUid = TestDataManager.BusinessFirebaseUid;
            var langIso639Code = "hu";

            var response = await _client.GetAsync($"business/{firebaseUid}/{langIso639Code}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<CreateBusinessCommandV2Response>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Business);
            Assert.NotNull(commandResponse.Business.BusinessSettings);
            Assert.Equal(langIso639Code,commandResponse.Business.BusinessSettings.LangIso639Code);
        }

        [Fact, Priority(2)]
        public async Task SetBusinessDetailsCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory,details:false);

            var businessId = TestDataManager.BusinessId;
            var details = TestDataManager.BusinessDetailsCreate;

            var httpContent = new StringContent(JsonSerializer.Serialize(details), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/details", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessDetailsCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Details);
            Assert.True(commandResponse.Details.Description == details.Description);
        }
        
        [Fact, Priority(3)]
        public async Task UpdateBusinessDetailsCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var details = TestDataManager.BusinessDetailsEdit;

            var httpContent = new StringContent(JsonSerializer.Serialize(details), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/details", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessDetailsCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Details);
            Assert.True(commandResponse.Details.Description == details.Description);
        }
        
        [Fact, Priority(4)]
        public async Task SetBusinessAddressCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory,address:false);

            var businessId = TestDataManager.BusinessId;
            var address = TestDataManager.BusinessAddressCreate;

            var httpContent = new StringContent(JsonSerializer.Serialize(address), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/address", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessAddressCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Address);
            Assert.True(commandResponse.Address.Description == address.Description);
        }
        
        [Fact, Priority(5)]
        public async Task UpdateBusinessAddressCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var address = TestDataManager.BusinessAddressEdit;

            var httpContent = new StringContent(JsonSerializer.Serialize(address), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/address", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessAddressCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Address);
            Assert.True(commandResponse.Address.Description == address.Description);
        }
        
        [Fact, Priority(6)]
        public async Task SetBusinessContactCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory,contact:false);

            var businessId = TestDataManager.BusinessId;
            var contact = TestDataManager.BusinessContactCreate;

            var httpContent = new StringContent(JsonSerializer.Serialize(contact), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/contact", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessContactCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Contact);
            Assert.True(commandResponse.Contact.Email == contact.Email);
        }
        
        [Fact, Priority(7)]
        public async Task UpdateBusinessContactCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var contact = TestDataManager.BusinessContactEdit;

            var httpContent = new StringContent(JsonSerializer.Serialize(contact), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/contact", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateBusinessContactCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Contact);
            Assert.True(commandResponse.Contact.Email == contact.Email);
        }

        [Fact, Priority(8)]
        public async Task CreateEmployeeCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var employeeInfo = TestDataManager.FirstEmployeeInfoCreate;

            var httpContent = new StringContent(JsonSerializer.Serialize(employeeInfo), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"business/{businessId}/employees", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<CreateEmployeeCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Employee);
            Assert.NotNull(commandResponse.Employee.EmployeeInfo);
            Assert.Equal(employeeInfo.FirstName, commandResponse.Employee.EmployeeInfo.FirstName);
        }

        [Fact, Priority(9)]
        public async Task UpdateEmployeeCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);

            var employeeInfo = TestDataManager.FirstEmployeeInfoEdit;
            employeeInfo.EmployeeId = employeeId;

            var httpContent = new StringContent(JsonSerializer.Serialize(employeeInfo), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"employee/{employeeId}", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UpdateEmployeeCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.Equal(employeeInfo.FirstName, commandResponse.EmployeeInfo.FirstName);
        }

        [Fact, Priority(10)]
        public async Task DeleteEmployeeCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);

            var response = await _client.DeleteAsync($"employee/{employeeId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteEmployeeCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
        }

        [Fact, Priority(11)]
        public async Task CreateServiceCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var service = TestDataManager.FirstServiceCreate;
            var businessId = Guid.Parse(TestDataManager.BusinessId);

            var httpContent = new StringContent(JsonSerializer.Serialize(service), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync("service", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<CreateServiceCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Service);
            Assert.Equal(businessId, commandResponse.Service.BusinessId);
        }

        [Fact, Priority(12)]
        public async Task UpdateServiceCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory);

            var service = TestDataManager.FirstServiceEdit;
            var serviceId = TestDataManager.FirstServiceId;

            var httpContent = new StringContent(JsonSerializer.Serialize(service), Encoding.UTF8, "application/json");

            var response = await _client.PostAsync($"service/{serviceId}", httpContent);
            var responseBody = await response.Content.ReadAsStringAsync();

            var commandResponse = JsonSerializer.Deserialize<UpdateServiceCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.NotNull(commandResponse.Service);
            Assert.Equal(service.Name, commandResponse.Service.Name);
        }

        [Fact, Priority(13)]
        public async Task DeleteServiceCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            DatabaseManager.InsertService(_factory);

            var serviceId = TestDataManager.FirstServiceId;

            var response = await _client.DeleteAsync($"service/{serviceId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteServiceCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
        }

        [Fact, Priority(14)]
        public async Task UploadBusinessAvatarCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var awsBucketName = TestDataManager.AWSBucketName;

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            using var form = new MultipartFormDataContent();
            using var fileContent = new ByteArrayContent(fileBytes);
            fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("multipart/form-data");
            form.Add(fileContent, "file", Path.GetFileName(path));

            var response = await _client.PostAsync($"business/{businessId}/avatar", form);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UploadImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotNull(commandResponse.Image);
            Assert.NotNull(commandResponse.Image.PathUrl);
            Assert.True(commandResponse.Image.PathUrl.Contains(awsBucketName) == true);
        }

        [Fact, Priority(15)]
        public async Task DeleteBusinessAvatarCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            string fileKey = await DatabaseManager.InsertBusinessAvatar(_factory);

            var businessId = TestDataManager.BusinessId;

            var response = await _client.DeleteAsync($"business/{businessId}/avatar");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.Null(commandResponse.ErrorMessage);
        }

        [Fact, Priority(16)]
        public async Task UploadBusinessPortfolioImageCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var businessId = TestDataManager.BusinessId;
            var awsBucketName = TestDataManager.AWSBucketName;

            var directory = Directory.GetCurrentDirectory();
            var path = Path.Combine(directory, $"TestData/Static/Images/image2.jpg");

            var fileBytes = await File.ReadAllBytesAsync(path);

            using var form = new MultipartFormDataContent();
            using var fileContent = new ByteArrayContent(fileBytes);
            fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("multipart/form-data");
            form.Add(fileContent, "file", Path.GetFileName(path));

            var response = await _client.PostAsync($"business/{businessId}/portfolio", form);
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<UploadImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.NotNull(commandResponse.Image);
            Assert.NotNull(commandResponse.Image.PathUrl);
            Assert.True(commandResponse.Image.PathUrl.Contains(awsBucketName) == true);
        }

        [Fact, Priority(17)]
        public async Task DeleteBusinessPortfolioCommand()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);

            var fileId = await DatabaseManager.InsertBusinessPortfolio(_factory);

            var businessId = TestDataManager.BusinessId;

            var response = await _client.DeleteAsync($"business/{businessId}/portfolio/{fileId}");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            var commandResponse = JsonSerializer.Deserialize<DeleteImageCommandResponse>(responseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            Assert.True(commandResponse.Success);
            Assert.False(commandResponse.HadErrors);
            Assert.Null(commandResponse.ErrorMessage);
        }
    }
}
