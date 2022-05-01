using System;

namespace AllbertBackend.Application.Exceptions
{
    public class GeocodingException : Exception
    {
        private string Status { get; }
        public GeocodingException(string status, string message) : base(message)
        {
            Status = status;
        }
    }
}
