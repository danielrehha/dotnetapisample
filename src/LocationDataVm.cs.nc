using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.ViewModels
{
    public class LocationDataVm
    {
        public string StreetName { get; set; }
        public string StreetType { get; set; }
        public string StreetNumber { get; set; }
        public string AddressDoorbell { get; set; }
        public string AddressFloor { get; set; }
        public string AddressDescription { get; set; }
        public double LocationLong { get; set; }
        public double LocationLat { get; set; }
    }
}
