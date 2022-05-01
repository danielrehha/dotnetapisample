using Amazon.S3;
using Amazon.S3.Model;
using Amazon.S3.Transfer;
using Microsoft.AspNetCore.Http;
using System.IO;
using System.Threading.Tasks;
using AllbertBackend.Contracts.AWS;
using AllbertBackend.Infrastructure.AWS.Utilities;

namespace AllbertBackend.Infrastructure.AWS
{
    public class AWSS3Service : IAWSS3Service
    {
        private readonly IAWSS3Manager _iawss3Manager;
        private readonly IAmazonS3 _s3Client;
        private readonly IAWSS3ObjectUrlResolver _objectUrlResolver;

        public AWSS3Service(IAWSS3Manager iawss3Manager, IAWSS3ObjectUrlResolver objectNameResolver)
        {
            _iawss3Manager = iawss3Manager;
            _s3Client = _iawss3Manager.GetOptions().CreateServiceClient<IAmazonS3>();
            _objectUrlResolver = objectNameResolver;
        }

        public async Task<string> UploadPublicImageAsync(IFormFile file, string folder, string fileName)
        {
            var regionEndpoint = _iawss3Manager.GetRegionEndpoint();
            var bucket = _iawss3Manager.GetBucket();
            var transferUtility = new TransferUtility(_s3Client);
            using (var ms = new MemoryStream())
            {
                await file.CopyToAsync(ms);
                await transferUtility.UploadAsync(ms, bucket, folder + fileName);
            }
            return _objectUrlResolver.GetObjectUrl(bucket, regionEndpoint, $"{folder}{fileName}");
        }

        public async Task<string> UploadPublicImageAsync(byte[] file, string folder, string fileName)
        {
            var regionEndpoint = _iawss3Manager.GetRegionEndpoint();
            var bucket = _iawss3Manager.GetBucket();
            var transferUtility = new TransferUtility(_s3Client);
            using (var ms = new MemoryStream())
            {
                await ms.WriteAsync(file);
                await transferUtility.UploadAsync(ms, bucket, folder + fileName);
            }
            return _objectUrlResolver.GetObjectUrl(bucket, regionEndpoint, $"{folder}{fileName}");
        }

        public async Task DeletePublicImageAsync(string fileUrl)
        {
            var fileKey = AWSObjectUtilities.ExtractObjectKeyFromUrl(fileUrl);
            var bucket = _iawss3Manager.GetBucket();
            var request = new DeleteObjectRequest
            {
                BucketName = bucket,
                Key = fileKey,
            };
            await _s3Client.DeleteObjectAsync(request);
        }

        public async Task DeletePublicImageAsync(string fileUrl, IAmazonS3 client, IAWSS3Manager awss3Manager)
        {
            var fileKey = AWSObjectUtilities.ExtractObjectKeyFromUrl(fileUrl);
            var bucket = awss3Manager.GetBucket();
            var request = new DeleteObjectRequest
            {
                BucketName = bucket,
                Key = fileKey,
            };
            await client.DeleteObjectAsync(request);
        }

        public async Task DeletePublicImageByKeyAsync(string fileKey)
        {
            var bucket = _iawss3Manager.GetBucket();
            var request = new DeleteObjectRequest
            {
                BucketName = bucket,
                Key = fileKey,
            };
            await _s3Client.DeleteObjectAsync(request);
        }
    }
}
