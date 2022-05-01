using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Global.Commands.CreateAppointmentCommand;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointment;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Helpers;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatusCommand;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class AppointmentController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;

        public AppointmentController(IMediator mediator, IResponseManager responseManager)
        {
            _mediator = mediator;
            _responseManager = responseManager;
        }

        [HttpPost]
        public async Task<ActionResult<CreateAppointmentCommandResponse>> CreateAppointmentAsync([FromBody] Appointment appointment, string createdBy = "customer")
        {
            var result = await _mediator.Send(new CreateAppointmentCommand.CreateAppointmentCommand(appointment, createdBy));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpPost("{appointmentId:guid}")]
        public async Task<ActionResult<UpdateAppointmentCommandResponse>> UpdateAppointmentAsync(Guid appointmentId, [FromBody] Appointment appointment)
        {
            var result = await _mediator.Send(new UpdateAppointmentCommand(appointmentId,appointment));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet]
        [Route("{appointmentId}/update")]
        public async Task<ActionResult<UpdateAppointmentStatusCommandResponse>> UpdateAppointmentStatusAsync(Guid appointmentId, int status)
        {
            var result = await _mediator.Send(new UpdateStatusAppointmentCommand(appointmentId, status));

            return _responseManager.MapActionResult(result);
        }
    }
}
