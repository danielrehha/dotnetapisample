using Amazon;
using Amazon.Extensions.NETCore.Setup;
using Amazon.Runtime;

namespace AllbertBackend.Contracts.AWS
{
    public interface IAWSS3Manager
    {
        BasicAWSCredentials GetCredentials();
        AWSOptions GetOptions();
        RegionEndpoint GetRegionEndpoint();
        string GetBucket();
    }
}
