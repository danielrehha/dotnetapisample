using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Business.Commands.CreateService;
using AllbertBackend.Application.Features.Business.Commands.DeleteService;
using AllbertBackend.Application.Features.Business.Commands.UpdateService;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceList;
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
    }
}
