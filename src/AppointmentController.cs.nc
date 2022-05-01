using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Global.Commands.CreateAppointment;
using AllbertBackend.Application.Features.Global.Commands.DeleteAppointment;
using AllbertBackend.Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace AllbertBackend.API.Controllers
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
        public async Task<ActionResult<CreateAppointmentCommandResponse>> CreateAppointmentAsync([FromBody] Appointment appointment)
        {
            var result = await _mediator.Send(new CreateAppointmentCommand(appointment, "customer"));
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
