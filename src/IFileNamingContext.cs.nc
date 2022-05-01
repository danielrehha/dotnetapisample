using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Common
{
    public interface IFileNamingContext
    {
        string GetFileNameWithExtension(IFormFile file);
    }
}
