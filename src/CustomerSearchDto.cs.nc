using AllbertBackend.Domain.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Dtos
{
    public class CustomerSearchDto
    {
        public string Keyword { get; set; }
        public int Page { get; set; }
        public SearchLocationType LocationType { get; set; }
        public string CountryAlpha2Code { get; set; }
        public string City { get; set; }
        public double Lat { get; set; }
        public double Lng { get; set; }
        public double MaxDistanceInKm { get; set; }
        public EntityType EntityType { get; set; }
        public DateTime Date { get; set; }
    }
}
