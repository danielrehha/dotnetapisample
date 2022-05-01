using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.AWS
{
    public interface IAWSService
    {
        Task<string> UploadPublicImageAsync(IFormFile file, string folder, string fileName);
        Task DeletePublicImage(string filePath);
        Task DeletePublicImageAsync(string fileUrl);
        Task DeletePublicImageByKeyAsync(string key);
    }
}
