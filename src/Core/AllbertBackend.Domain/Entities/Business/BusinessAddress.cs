using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class BusinessAddress : BaseEntity
    {
        public Guid BusinessId { get; set; }
        public string CountryName { get; set; }
        public string CountryNativeName { get; set; }
        public string CountryAlpha2Code { get; set; }
        public string CityName { get; set; }
        public string ZipCode { get; set; }
        public string StreetName { get; set; }
        public string StreetType { get; set; }
        public string StreetNumber { get; set; }
        public string Description { get; set; }
        public double LocationLong { get; set; }
        public double LocationLat { get; set; }
    }
}