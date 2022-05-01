using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
namespace AllbertBackend.API.Helpers
{
    public static class JsonSerializerHelper
    {
        public static JsonSerializerOptions PaginationHeaderSerializerOptions
            => new JsonSerializerOptions() { Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping };
    }
}
