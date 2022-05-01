﻿using System;
using System.Threading.Tasks;

namespace AllbertBackend.Contracts.SessionManagement
{
    public interface ISessionManager
    {
        Task<string> IsConnectedAsync(Guid entityId, string entityType);
        Task CaptureConnection(Guid entityId, string entityType, string sessionId, string sessionType);
        Task DisposeConnection(string entityType, string sessionId);
    }
}
