using System;
using System.Net.Http;
using System.Threading.Tasks;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.DataManager.RandomData;
using AllbertBackend.IntegrationTests.Helpers;
using Microsoft.EntityFrameworkCore.Storage;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.API.IntegrationTests.DatabasePopulator
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class DatabasePopulator : IClassFixture<DatabasePopulatorWebApplicationFactory<Startup>>
    {
        private readonly DatabasePopulatorWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;

        public DatabasePopulator(DatabasePopulatorWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));
        }

        //[Fact(Skip = "This is not an integration test, it is a temporary way to populate the database with test data in development environments.")]
        [Fact]
        public async Task Generate_Test_Data()
        {
            RandomData.Initialize();
            
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory, "uYqk6urnDjRDf6r1AHxdxPeqf0O2");
            
            DatabaseManager.InsertRandomEmployees(_factory);
            DatabaseManager.InsertRandomServices(_factory);
            DatabaseManager.InsertRandomCustomers(_factory);
            DatabaseManager.InsertRandomEmployeeServices(_factory);
            DatabaseManager.InsertRandomAppointments(_factory);
            DatabaseManager.InsertRandomReviews(_factory);
        }
    }
}