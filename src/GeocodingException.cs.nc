using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Exceptions
{
    public class GeocodingException : Exception
    {
        public string Status { get; }
        public GeocodingException(string status, string message) : base(message)
        {
            Status = status;
        }
    }
}
