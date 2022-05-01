using AllbertBackend.Application.Contracts.Persistence.Shared;
using AllbertBackend.Application.Features.Business.Queries;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Infrastructure.Persistence;
using AllbertBackend.Persistence.Repositories.Utils;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AllbertBackend.Application.Internalization;
using AllbertBackend.Application.Notification;
using AllbertBackend.Domain.Enums;
using MediatR;
using Z.EntityFramework.Plus;
namespace AllbertBackend.Persistence.Repositories
{
    public class EventRepository : BaseRepository<ApplicationEvent>, IEventRepository
    {
        private readonly AllbertBackendDBContext _context;
        private readonly IInternalizationService _internalizationService;
        public EventRepository(AllbertBackendDBContext context, IInternalizationService internalizationService) :
            base(context)
        {
            _context = context;
            _internalizationService = internalizationService;
        }
        public async Task<PagedList<NotificationDto>> GetBusinessNotificationListAsync(Guid businessId,
            BusinessNotificationQueryParameters parameters)
        {
            var collection = _context.ApplicationEvents
                .Where(e => e.BusinessId == businessId
                            && e.Type != EventType.BusinessCreateAppointment
                            && e.Type != EventType.BusinessDeleteAppointment
                            && e.Type != EventType.BusinessRescheduleAppointment
                )
                .Select(e => new NotificationDto
                {
                    Id = e.Id,
                    CreatedOn = e.CreatedOn,
                    EventType = e.Type,
                })
                .OrderByDescending(e => e.CreatedOn);
            await _context.ApplicationEvents
                .Where(e => e.BusinessId == businessId && e.Seen == false)
                .UpdateAsync(e => new ApplicationEvent() {Seen = true});
            var result = await PagedList<NotificationDto>.CreateAsync(collection, parameters.PageNumber,
                parameters.PageSize);
            var settings = await _context.BusinessSettings.FirstOrDefaultAsync(b => b.BusinessId == businessId);
            foreach (var item in result)
            {
                item.Title = _internalizationService.GetEventTitle(item.EventType, settings.LangIso639Code);
                item.Content = "content";
            }
            return result;
        }
    }
}
