using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace AllbertBackend.IntegrationTests.Helpers
{
    public static class JsonSerializerHelper
    {
        public static JsonSerializerOptions DefaultSerializerOptions => new JsonSerializerOptions
        {

        };

        public static JsonSerializerOptions DefaultDeserializerOptions => new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true,
        };
    }
}
