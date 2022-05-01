using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;
using Amazon.S3;

namespace AllbertBackend.Contracts.AWS
{
    public interface IAWSS3Service
    {
        Task<string> UploadPublicImageAsync(IFormFile file, string folder, string fileName);
        Task<string> UploadPublicImageAsync(byte[] file, string folder, string fileName);
        Task DeletePublicImageAsync(string fileUrl);
        Task DeletePublicImageAsync(string fileUrl, IAmazonS3 client, IAWSS3Manager awss3Manager);
        Task DeletePublicImageByKeyAsync(string key);
    }
}
