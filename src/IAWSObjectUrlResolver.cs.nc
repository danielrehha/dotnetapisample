using Amazon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.AWS
{
    public interface IAWSObjectUrlResolver
    {
        string GetObjectUrl(string bucket, RegionEndpoint region, string filePath);
    }
}
