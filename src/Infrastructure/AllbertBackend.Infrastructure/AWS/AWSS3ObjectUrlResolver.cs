using Amazon;
using AllbertBackend.Contracts.AWS;

namespace AllbertBackend.Infrastructure.AWS
{
    public class AWSS3ObjectUrlResolver : IAWSS3ObjectUrlResolver
    {
        public string GetObjectUrl(string bucket, RegionEndpoint region, string filePath)
        {
            return $"https://{bucket}.s3.{region.SystemName}.amazonaws.com/{filePath}";
        }
    }
}
