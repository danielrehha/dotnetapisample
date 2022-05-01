using AllbertBackend.Application.Contracts.Geocoding;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using AllbertBackend.Application.Contracts.Geocoding.Entities;
using AllbertBackend.Application.Exceptions;
using Microsoft.Extensions.Configuration;
namespace AllbertBackend.Infrastructure.Geocoding
{
    public class GeocodeService : IGeocodeService
    {
        private readonly IConfiguration _configuration;
        public GeocodeService(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public async Task<GeocodeData> GetCoordinatesByAddressAsync(string country, string city, string zip, string street, string streetNumber)
        {
            using(var client = new HttpClient())
            {
                var address = $"{country},%20{zip}%20{city},%20{street}%20{streetNumber}";
                var apiKey = _configuration.GetSection("GoogleApi").GetValue<string>("GeoApiKey");
                var message = new HttpRequestMessage();
                message.RequestUri = new Uri($"https:
                var result = await client.SendAsync(message);
                var response = await result.Content.ReadAsStringAsync();
                var data = JsonConvert.DeserializeObject<GeocodeData>(response);
                if(data.Status != "OK")
                {
                    throw new GeocodingException(data.Status, "error");
                }
                return data;
            }
        }
    }
}
