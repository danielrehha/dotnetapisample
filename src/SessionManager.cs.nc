using AllbertBackend.Application.Contracts.SessionManagement;
using AllbertBackend.Application.Contracts.SessionManagement.Exceptions;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.SessionManagement
{
    public class SessionManager : ISessionManager
    {
        private readonly AllbertBackendDBContext _context;
        public SessionManager(AllbertBackendDBContext context)
        {
            _context = context;
        }
        public async Task CaptureConnection(Guid entityId, string entityType, string sessionId, string sessionType)
        {
            var session = await _context.Sessions.FirstOrDefaultAsync(s => s.EntityId == entityId);
            if (session != null)
            {
                _context.Sessions.Remove(session);
            }
            session = new ApplicationSession()
            {
                EntityId = entityId,
                SessionId = sessionId,
                IsConnected = true,
                EntityType = entityType,
                SessionType = sessionType,
            };
            await _context.Sessions.AddAsync(session);
            await _context.SaveChangesAsync();
        }
        public async Task DisposeConnection(string entityType, string sessionId)
        {
            var session = await _context.Sessions.FirstOrDefaultAsync(s => s.SessionId == sessionId);
            if (session == null)
            {
                return;
            }
            _context.Sessions.Remove(session);
            await _context.SaveChangesAsync();
        }
        public async Task<string> IsConnectedAsync(Guid entityId, string entityType)
        {
            var result = await _context.Sessions.FirstOrDefaultAsync(s => s.EntityId == entityId && s.IsConnected);
            if(result == null || result.SessionId == null)
            {
                return null;
            }
            return result.SessionId;
        }
    }
}
