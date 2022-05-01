using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomerRating;
using AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList;
using AllbertBackend.Domain.Entities;
using AllbertBackend.IntegrationTests.Core;
using AllbertBackend.IntegrationTests.Helpers;
using Xunit;
using Xunit.Priority;

namespace AllbertBackend.IntegrationTests.Tests.Customer
{
    [Collection("Serial")]
    [TestCaseOrderer(PriorityOrderer.Name, PriorityOrderer.Assembly)]
    public class CustomerCommands : IClassFixture<CustomWebApplicationFactory<Startup>>
    {
        private readonly CustomWebApplicationFactory<Startup> _factory;
        private readonly HttpClient _client;

        public CustomerCommands(CustomWebApplicationFactory<Startup> factory)
        {
            _factory = factory;
            _client = _factory.CreateDefaultClient(new Uri("https://localhost/api/"));
        }

        [Fact, Priority(1)]
        public async Task Should_CreateCustomerReview()
        {
            DatabaseManager.InitializeDatabase(_factory);
            DatabaseManager.InsertBusiness(_factory);
            var employeeId = DatabaseManager.InsertEmployee(_factory);
            var customerId = DatabaseManager.InsertCustomer(_factory);

            var review = new CustomerReview()
            {
                Rating = 5,
                Comment = "Comment",
                CustomerId = customerId,
                EmployeeId = employeeId,
                CreatedOn = DateTime.UtcNow,
            };

            var httpContent = new StringContent(JsonSerializer.Serialize(review), Encoding.UTF8, "application/json");

            var postResponse = await _client.PostAsync($"employee/{employeeId}/reviews", httpContent);
            var postResponseBody = await postResponse.Content.ReadAsStringAsync();

            postResponse.EnsureSuccessStatusCode();

            var postResponseCommand = JsonSerializer.Deserialize<CreateCustomerReviewCommandResponse>(postResponseBody);

            var getResponse = await _client.GetAsync($"employee/{employeeId}/reviews?pageNumber=1&pageSize=10");
            var getResponseBody = await getResponse.Content.ReadAsStringAsync();

            getResponse.EnsureSuccessStatusCode();

            var getResponseCommand =
                JsonSerializer.Deserialize<GetCustomerReviewListQueryResponse>(getResponseBody, JsonSerializerHelper.DefaultDeserializerOptions);

            var paginationData = JsonSerializer.Deserialize<Dictionary<string,object>>(getResponseCommand.PaginationData);
            
            Assert.True(postResponseCommand.Success);
            Assert.True(getResponseCommand.Success);
            Assert.NotNull(getResponseCommand.CustomerReviews);
            Assert.True(getResponseCommand.CustomerReviews.Count == 1);
            Assert.Equal(review.Comment, getResponseCommand.CustomerReviews.First().Comment);
            Assert.NotNull(paginationData);
            Assert.Equal(1,(int)paginationData["totalCount"]);
        }
    }
}