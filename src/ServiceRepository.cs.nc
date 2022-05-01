using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Infrastructure.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories
{
    public class ServiceRepository : BaseRepository<Service>, IServiceRepository
    {
        public ServiceRepository(AllbertBackendDBContext context) : base(context)
        {
        }
    }
}
