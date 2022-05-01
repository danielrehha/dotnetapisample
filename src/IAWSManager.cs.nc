using Amazon;
using Amazon.Extensions.NETCore.Setup;
using Amazon.Runtime;
namespace AllbertBackend.Application.Contracts.AWS
{
    public interface IAWSManager
    {
        BasicAWSCredentials GetCredentials();
        AWSOptions GetOptions();
        RegionEndpoint GetRegionEndpoint();
        string GetBucket();
    }
}
