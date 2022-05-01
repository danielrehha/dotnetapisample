using Microsoft.AspNetCore.Http;
using System.IO;
using AllbertBackend.Contracts.Common;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.Infrastructure.Common
{
    public class FileNamingContext : IFileNamingContext
    {
        public string GetFileNameWithExtension(IFormFile file)
        {
            var extension = Path.GetExtension(file.FileName);
            return null;
        }
    }
}
