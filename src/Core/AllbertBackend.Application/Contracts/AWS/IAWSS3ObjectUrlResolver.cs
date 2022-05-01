using Amazon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Contracts.AWS
{
    public interface IAWSS3ObjectUrlResolver
    {
        string GetObjectUrl(string bucket, RegionEndpoint region, string filePath);
    }
}
