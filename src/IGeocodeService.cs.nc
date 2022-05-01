using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Geocoding.Entities;
using GoogleApi;
namespace AllbertBackend.Application.Contracts.Geocoding
{
    public interface IGeocodeService
    {
        Task<GeocodeData> GetCoordinatesByAddressAsync(string country, string city, string zip, string street, string streetNumber);
    }
}
