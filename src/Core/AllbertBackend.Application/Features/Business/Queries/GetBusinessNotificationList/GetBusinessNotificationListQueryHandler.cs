using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Shared;
using AllbertBackend.Application.Notification;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationListQuery
{
    public class GetBusinessNotificationListQueryHandler : IRequestHandler<GetBusinessNotificationListQuery, GetBusinessNotificationListQueryResponse>
    {
        private readonly IEventRepository _eventRepository;
        private readonly IBusinessRepository _repository;
        private readonly INotificationService _notification;

        public GetBusinessNotificationListQueryHandler(IEventRepository eventRepository, IBusinessRepository repository, INotificationService notification)
        {
            _eventRepository = eventRepository;
            _repository = repository;
            _notification = notification;
        }

        public async Task<GetBusinessNotificationListQueryResponse> Handle(GetBusinessNotificationListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessNotificationListQueryResponse();

            var result = await _eventRepository.GetBusinessNotificationListAsync(request.BusinessId, request.Parameters);

            response.Notifications = result;
            
            return response;
        }
    }
}
