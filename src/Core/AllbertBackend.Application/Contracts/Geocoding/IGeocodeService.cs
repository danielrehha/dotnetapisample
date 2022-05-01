using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Geocoding.Entities;

namespace AllbertBackend.Application.Contracts.Geocoding
{
    public interface IGeocodeService
    {
        Task<GeocodeData> GetCoordinatesByAddressAsync(string country, string city, string zip, string street, string streetNumber);
    }
}
