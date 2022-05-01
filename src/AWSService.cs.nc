using AllbertBackend.Application.Contracts.AWS;
using AllbertBackend.Infrastructure.AWS.Utilities;
using Amazon.S3;
using Amazon.S3.Model;
using Amazon.S3.Transfer;
using Microsoft.AspNetCore.Http;
using System;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
namespace AllbertBackend.Infrastructure.AWS
{
    public class AWSService : IAWSService
    {
        private readonly IAWSManager _awsManager;
        private readonly IAmazonS3 _s3client;
        private readonly IAWSObjectUrlResolver _objectUrlResolver;
        public AWSService(IAWSManager awsManager, IAWSObjectUrlResolver objectNameResolver)
        {
            _awsManager = awsManager;
            _s3client = _awsManager.GetOptions().CreateServiceClient<IAmazonS3>();
            _objectUrlResolver = objectNameResolver;
        }
        public async Task DeletePublicImage(string filePath)
        {
            await _s3client.DeleteAsync(_awsManager.GetBucket(), filePath, null);
        }
        public async Task<string> UploadPublicImageAsync(IFormFile file, string folder, string fileName)
        {
            var regionEndpoint = _awsManager.GetRegionEndpoint();
            var _bucket = _awsManager.GetBucket();
            var transferUtility = new TransferUtility(_s3client);
            using (var ms = new MemoryStream())
            {
                file.CopyTo(ms);
                await transferUtility.UploadAsync(ms, _bucket, folder + fileName);
            }
            return _objectUrlResolver.GetObjectUrl(_bucket, regionEndpoint, $"{folder}{fileName}");
        }
        public async Task<string> UploadPublicImageAsync(byte[] file, string folder, string fileName)
        {
            var regionEndpoint = _awsManager.GetRegionEndpoint();
            var _bucket = _awsManager.GetBucket();
            var transferUtility = new TransferUtility(_s3client);
            using (var ms = new MemoryStream())
            {
                await ms.WriteAsync(file);
                await transferUtility.UploadAsync(ms, _bucket, folder + fileName);
            }
            return _objectUrlResolver.GetObjectUrl(_bucket, regionEndpoint, $"{folder}{fileName}");
        }
        public async Task DeletePublicImageAsync(string fileUrl)
        {
            var fileKey = AWSObjectUtilities.ExtractObjectKeyFromUrl(fileUrl);
            var _bucket = _awsManager.GetBucket();
            var request = new DeleteObjectRequest
            {
                BucketName = _bucket,
                Key = fileKey,
            };
            await _s3client.DeleteObjectAsync(request);
        }
        public async Task DeletePublicImageByKeyAsync(string fileKey)
        {
            var _bucket = _awsManager.GetBucket();
            var request = new DeleteObjectRequest
            {
                BucketName = _bucket,
                Key = fileKey,
            };
            await _s3client.DeleteObjectAsync(request);
        }
    }
}
