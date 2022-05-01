using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Business.Commands.CreateServiceCommand;
using AllbertBackend.Application.Features.Business.Commands.DeleteServiceCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateEntityStatus;
using AllbertBackend.Application.Features.Business.Commands.UpdateServiceCommand;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Domain.Helpers;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("api/[controller]")]
    public class ServiceController : Controller
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;

        public ServiceController(IResponseManager responseManager, IMediator mediator)
        {
            _responseManager = responseManager;
            _mediator = mediator;
        }

        [HttpPost()]
        public async Task<ActionResult<CreateServiceCommandResponse>> CreateServiceAsync([FromBody] Service service)
        {
            var result = await _mediator.Send(new CreateServiceCommand(service));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{serviceId}")]
        public async Task<ActionResult<UpdateServiceCommandResponse>> UpdateServiceAsync(Guid serviceId, [FromBody] Service service)
        {
            var result = await _mediator.Send(new UpdateServiceCommand(serviceId, service));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{serviceId}")]
        public async Task<ActionResult<DeleteServiceCommandResponse>> DeleteServiceAsync(Guid serviceId)
        {
            var result = await _mediator.Send(new DeleteServiceCommand(serviceId));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpPost("{serviceId}/status")]
        public async Task<ActionResult<UpdateEntityStatusCommandResponse>> UpdateStatusAsync(Guid serviceId,
            string value = "")
        {
            if (!CommonValidator.IsEntityStatusValid(value))
            {
                return NotFound("Invalid entity status");
            }
            var result = await _mediator.Send(new UpdateEntityStatusCommand(serviceId, EntityType.Service, value.GetEntityStatus()));

            return _responseManager.MapActionResult(result);
        }
    }
}
