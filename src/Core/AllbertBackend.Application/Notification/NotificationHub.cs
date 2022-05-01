using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Contracts.SessionManagement;

namespace AllbertBackend.Application.Notification
{
    public class NotificationHub : Hub
    {
        private static Dictionary<string, string> CapturedConnections { get; set; } = new Dictionary<string, string>();
        private readonly ISessionManager _sessionManager;

        public NotificationHub(ISessionManager sessionManager)
        {
            _sessionManager = sessionManager;
        }

        public override async Task OnConnectedAsync()
        {
            var entityId = Guid.Parse(Context.GetHttpContext().Request.Query["entityId"].ToString());
            var entityType = Context.GetHttpContext().Request.Query["entityType"].ToString();
            var sessionType = Context.GetHttpContext().Request.Query["sessionType"].ToString();
            await _sessionManager.CaptureConnection(entityId, entityType, Context.ConnectionId, sessionType);
            if(!CapturedConnections.ContainsKey(Context.ConnectionId))
            {
                CapturedConnections.Add(Context.ConnectionId, sessionType);
            }
            await base.OnConnectedAsync();
        }

        public override async Task OnDisconnectedAsync(Exception exception)
        {
            await _sessionManager.DisposeConnection(CapturedConnections[Context.ConnectionId], Context.ConnectionId);
            await base.OnDisconnectedAsync(exception);
        }
    }
}
