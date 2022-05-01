using MediatR;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;
using System;
using AllbertBackend.Application.Contracts.Persistence.Appointment;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Contracts.Persistence.Shared;
using AllbertBackend.Domain.Entities.Shared;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.Notification;
using AllbertBackend.Contracts.SessionManagement;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.CreateAppointmentCommand
{
    public class
        CreateAppointmentCommandHandler : IRequestHandler<CreateAppointmentCommand, CreateAppointmentCommandResponse>
    {
        private readonly IAppointmentRepository _appointmentRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IHubContext<NotificationHub> _hubContext;
        private readonly IEventRepository _eventRepository;
        private readonly ISessionManager _sessionManager;
        private readonly INotificationService _notification;
        private readonly IBusinessRepository _businessRepository;

        public CreateAppointmentCommandHandler(IAppointmentRepository appointmentRepository,ICustomerRepository customerRepository,
            IEmployeeRepository employeeRepository, IServiceRepository serviceRepository,
            IHubContext<NotificationHub> hubContext, IEventRepository eventRepository, ISessionManager sessionManager,
            INotificationService notification, IBusinessRepository businessRepository)
        {
            _appointmentRepository = appointmentRepository;
            _customerRepository = customerRepository;
            _employeeRepository = employeeRepository;
            _serviceRepository = serviceRepository;
            _hubContext = hubContext;
            _eventRepository = eventRepository;
            _sessionManager = sessionManager;
            _notification = notification;
            _businessRepository = businessRepository;
        }

        public async Task<CreateAppointmentCommandResponse> Handle(CreateAppointmentCommand request,
            CancellationToken cancellationToken)
        {
            var response = new CreateAppointmentCommandResponse();

            var validator =
                new CreateAppointmentCommandValidator(_customerRepository, _employeeRepository, _serviceRepository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if (!response.Success)
            {
                return response;
            }

            try
            {
                request.Appointment.BusinessId =
                    await _employeeRepository.GetBusinessIdByEmployeeIdAsync((System.Guid) request.Appointment.EmployeeId);
                request.Appointment.CreatedOn = DateTime.UtcNow;
                await _appointmentRepository.CreateAppointmentAsync(request.Appointment);
            }
            catch (Exception e)
            {
                response.ErrorMessage = e.Message;
                response.Success = false;
                response.HadErrors = true;
                return response;
            }

            try
            {
                var sessionId = await _sessionManager.IsConnectedAsync(request.Appointment.BusinessId, "business");

                var notification = new ApplicationEvent()
                {
                    Id = Guid.NewGuid(),
                    BusinessId = request.Appointment.BusinessId,
                    Type = request.CreatedBy == "business"
                        ? EventType.BusinessCreateAppointment
                        : EventType.CustomerCreateAppointment,
                    Seen = sessionId != null,
                    CreatedOn = DateTime.UtcNow,
                    SerializedData = null,
                };

                await _eventRepository.AddAsync(notification);

                if (sessionId != null && request.CreatedBy == "customer")
                {
                    var languageIso639Code =
                        await _businessRepository.GetBusinessLanguageIso639CodeAsync(request.Appointment.BusinessId);
                    var notificationDto = _notification.ConvertEventToNotification(notification, languageIso639Code);
                    await _hubContext.Clients.Client(sessionId).SendAsync("receiveNotification", notification.Id,
                        "an event", "the content", notification.CreatedOn?.ToString("o"));
                }
            }
            catch (Exception e)
            {
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
            }


            return response;
        }
    }
}