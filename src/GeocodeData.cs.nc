using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Geocoding.Entities
{
    public class GeocodeData
    {
        public List<Dictionary<string, dynamic>> Results { get; set; } = new List<Dictionary<string, dynamic>>();
        public string Status { get; set; } = string.Empty;
    }
}
