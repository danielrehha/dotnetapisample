using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
