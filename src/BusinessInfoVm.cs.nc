using System;
namespace AllbertBackend.Application.Features
{
    public class BusinessInfoVm
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public string Country { get; set; }
        public string CountryAlpha2Code { get; set; }
        public string County { get; set; }
        public string City { get; set; }
        public string Zip { get; set; }
        public string StreetName { get; set; }
        public string StreetType { get; set; }
        public string StreetNumber { get; set; }
        public string AddressDoorbell { get; set; }
        public string AddressFloor { get; set; }
        public string AddressDescription { get; set; }
        public double LocationLong { get; set; }
        public double LocationLat { get; set; }
        public string ContactFirstName { get; set; }
        public string ContactLastName { get; set; }
        public string ContactPhone { get; set; }
        public string ContactPhoneIso { get; set; }
        public string ContactEmail { get; set; }
        public DateTime ModifiedOn { get; set; }
    }
}
