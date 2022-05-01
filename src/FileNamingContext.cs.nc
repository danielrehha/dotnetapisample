using AllbertBackend.Application.Contracts.Common;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Infrastructure.Common
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
