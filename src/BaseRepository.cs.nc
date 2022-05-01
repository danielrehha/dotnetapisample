using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Domain.Entities.Shared;
namespace AllbertBackend.Persistence.Repositories
{
    public class BaseRepository<T> : IAsyncRepository<T> where T : BaseEntity
    {
        private readonly AllbertBackendDBContext _context;
        public BaseRepository(AllbertBackendDBContext context)
        {
            _context = context;
        }
        public async Task<T> AddAsync(T entity)
        {
            entity.CreatedOn = DateTime.UtcNow;
            await _context.Set<T>().AddAsync(entity);
            await _context.SaveChangesAsync();
            return entity;
        }
        public async Task<T> DeleteAsync(Guid id)
        {
            var entity = await _context.Set<T>().FindAsync(id);
            _context.Set<T>().Remove(entity);
            await _context.SaveChangesAsync();
            return entity;
        }
        public async Task<IReadOnlyList<T>> GetAllAsync()
        {
            var result = await _context.Set<T>().ToListAsync();
            return result;
        }
        public async Task<T> GetByIdAsync(Guid id)
        {
            var result = await _context.Set<T>().FindAsync(id);
            return result;
        }
        public async Task<IReadOnlyList<T>> GetManyOfManyAsync(List<Guid> entities)
        {
            var result = new List<T>();
            foreach(var entity in entities)
            {
                var e = await _context.Set<T>().FindAsync(entity);
                result.Add(e);
            }
            return result;
        }
        public async Task<IReadOnlyList<T>> GetManyOfOneAsync(Guid id)
        {
            var result = await _context.Set<T>().ToListAsync();
            return result;
        }
        public async Task<T> UpdateAsync(Guid id, T entity)
        {
            var result = await _context.Set<T>().FindAsync(id);
            _context.Entry(result).State = EntityState.Detached;
            result = entity;
            result.ModifiedOn = DateTime.UtcNow;
            _context.Set<T>().Update(result);
            await _context.SaveChangesAsync();
            return result;
        }
        public async Task<bool> DoesExistAsync(Guid id)
        {
            var result = await _context.Set<T>().FindAsync(id);
            if(result == null)
            {
                return false;
            }
            return true;
        }
    }
}
