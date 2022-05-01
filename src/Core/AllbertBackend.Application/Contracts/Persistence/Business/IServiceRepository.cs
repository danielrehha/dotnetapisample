using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Contracts.Persistence.Business
{
    public interface IServiceRepository : IAsyncRepository<Service>
    {
        Task UpdateStatusAsync(Guid entityId, EntityStatus entityStatus);
    }
}
