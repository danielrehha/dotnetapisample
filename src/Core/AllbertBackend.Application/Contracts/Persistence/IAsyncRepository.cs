using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Contracts.Persistence
{
    public interface IAsyncRepository<T> where T: class
    {
        Task<IReadOnlyList<T>> GetAllAsync();
        Task<IReadOnlyList<T>> GetManyOfOneAsync(Guid id);
        Task<T> GetByIdAsync(Guid id);
        Task<T> AddAsync(T entity);
        Task<T> UpdateAsync(Guid id, T entity);
        Task<T> DeleteAsync(Guid id);
        Task<bool> DoesExistAsync(Guid id);
    }
}
