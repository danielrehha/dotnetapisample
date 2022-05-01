using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Contracts.Persistence
{
    public interface IServiceRepository : IAsyncRepository<Service>
    {
    }
}
