using AllbertBackend.Application.Contracts.AWS;
using Amazon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Infrastructure.AWS
{
    public class AWSObjectUrlResolver : IAWSObjectUrlResolver
    {
        public string GetObjectUrl(string bucket, RegionEndpoint region, string filePath)
        {
            return $"https:
        }
    }
}
