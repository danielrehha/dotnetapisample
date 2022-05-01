using System;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;

namespace AllbertBackend.Persistence.Repositories
{
    public class ServiceRepository : BaseRepository<Service>, IServiceRepository
    {
        private readonly AllbertBackendDBContext _context;
        public ServiceRepository(AllbertBackendDBContext context) : base(context)
        {
            _context = context;
        }

        public async Task UpdateStatusAsync(Guid entityId, EntityStatus entityStatus)
        {
            var entity = await _context.Services.FindAsync(entityId);
            if (entity == null)
            {
                throw new ArgumentNullException(entityId.ToString());
            }
            if (entityStatus == EntityStatus.Active)
            {
                entity.Enabled = true;
            }
            if (entityStatus == EntityStatus.Paused)
            {
                entity.Enabled = false;
            }
            _context.Entry(entity).State = EntityState.Detached;
            _context.Update(entity);
            await _context.SaveChangesAsync();
        }

        public override async Task<Service> DeleteAsync(Guid id)
        {
            var entity = await _context.Services.FindAsync(id);

            if (entity == null)
            {
                throw new ArgumentNullException($"{id}","Service was not found.");
            }

            entity.Deleted = true;
            _context.Services.Update(entity);

            await _context.SaveChangesAsync();

            return entity;
        }
    }
}
