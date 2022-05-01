using Amazon.S3;
using Amazon.S3.Model;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Infrastructure.AWS;

namespace AllbertBackend.IntegrationTests.Services.AWS
{
    public class AWSTestManager
    {
        private IAmazonS3 _client;
        private AWSS3Manager _iawss3Manager;
        private AWSS3Service _iawss3Service;

        public AWSTestManager(IConfiguration configuration)
        {
            _iawss3Manager = new AWSS3Manager(configuration);
            _client = new AmazonS3Client(_iawss3Manager.GetRegionEndpoint());

            _iawss3Service = new AWSS3Service(_iawss3Manager, new AWSS3ObjectUrlResolver());
        }
    }
}
