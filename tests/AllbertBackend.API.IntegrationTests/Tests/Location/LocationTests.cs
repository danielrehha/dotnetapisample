using System;
using System.Diagnostics;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.Helpers;
using AllbertBackend.IntegrationTests.Services.AWS;
using Newtonsoft.Json.Linq;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.IntegrationTests.Tests.Location
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class LocationTests : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;
        private readonly AWSTestManager _awsTestManager;

        public LocationTests(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));

            _awsTestManager = new AWSTestManager(_factory.Configuration);
        }

        [Fact, Priority(1)]
        public async Task LoadCountryListAsync()
        {
            var response = await _client.GetAsync($"location/countries");
            var responseBody = await response.Content.ReadAsStringAsync();

            response.EnsureSuccessStatusCode();

            Assert.NotNull(responseBody);
            Assert.Contains("Hungary", responseBody);
        }
    }
}