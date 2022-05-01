using System.Linq;

namespace AllbertBackend.Infrastructure.AWS.Utilities
{
    public static class AWSObjectUtilities
    {
        public static string ExtractObjectKeyFromUrl(string url)
        {
            return url.Split("amazonaws.com/").Last();
        }
    }
}
