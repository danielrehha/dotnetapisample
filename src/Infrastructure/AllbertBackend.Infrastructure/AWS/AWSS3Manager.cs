using AllbertBackend.Contracts.AWS;
using Amazon;
using Amazon.Extensions.NETCore.Setup;
using Amazon.Runtime;
using Microsoft.Extensions.Configuration;

namespace AllbertBackend.Infrastructure.AWS
{
    public class AWSS3Manager : IAWSS3Manager
    {
        private readonly IConfiguration _configuration;
        public AWSS3Manager(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public string GetBucket()
        {
            return _configuration.GetSection("AWS").GetSection("Buckets").GetValue<string>("PublicBucket");
        }

        public BasicAWSCredentials GetCredentials()
        {
            var cred = new BasicAWSCredentials(_configuration.GetSection("AWS").GetSection("Credentials").GetValue<string>("AccessKeyID"), _configuration.GetSection("AWS").GetSection("Credentials").GetValue<string>("SecretAccessKey"));
            return cred;
        }

        public AWSOptions GetOptions()
        {
            var options = _configuration.GetAWSOptions();
            options.Credentials = GetCredentials();
            return options;
        }

        public RegionEndpoint GetRegionEndpoint()
        {
            var options = _configuration.GetAWSOptions();
            return options.Region;
        }
    }
}
