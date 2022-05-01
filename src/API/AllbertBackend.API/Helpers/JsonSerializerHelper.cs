using System.Text.Json;

namespace AllbertBackend.API.Helpers
{
    public static class JsonSerializerHelper
    {
        public static JsonSerializerOptions PaginationHeaderSerializerOptions
            => new JsonSerializerOptions() { Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping };
    }
}
