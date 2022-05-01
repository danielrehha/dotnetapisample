using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Global.Commands.CreateAppointment;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomer;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomerFavorite;
using AllbertBackend.Application.Features.Customer.Commands.DeleteCustomerFavorite;
using AllbertBackend.Application.Features.Customer.Commands.UpdateCustomer;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomer;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentList;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteList;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfo;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResult;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails;
using Microsoft.AspNetCore.Cors;
namespace AllbertBackend.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;
        public CustomerController(IMediator mediator, IResponseManager responseManager)
        {
            _mediator = mediator;
            _responseManager = responseManager;
        }
        [HttpGet]
        [Route("{firebaseUid}")]
        public async Task<ActionResult<GetCustomerQueryResponse>> GetCustomerAsync(string firebaseUid)
        {
            var result = await _mediator.Send(new GetCustomerQuery(firebaseUid));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet]
        [Route("{customerId}/info")]
        public async Task<ActionResult<GetCustomerInfoQueryResponse>> GetCustomerInfoAsync(Guid customerId)
        {
            var result = await _mediator.Send(new GetCustomerInfoQuery(customerId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost]
        [Route("{firebaseUid}")]
        public async Task<ActionResult<CreateCustomerCommandResponse>> CreateCustomerAsync(string firebaseUid, [FromBody] CustomerInfo info)
        {
            var result = await _mediator.Send(new CreateCustomerCommand(firebaseUid, info));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost]
        [Route("{customerId}/info")]
        public async Task<ActionResult<UpdateCustomerCommandResponse>> UpdateCustomerAsync(Guid customerId, [FromBody] CustomerInfo info)
        {
            var result = await _mediator.Send(new UpdateCustomerCommand(customerId, info));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet]
        [Route("{customerId}/details")]
        public async Task<ActionResult<GetCustomerDetailsQueryResponse>> GetCustomerDetailsAsync(Guid customerId)
        {
            var result = await _mediator.Send(new GetCustomerDetailsQuery(customerId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet]
        [Route("{customerId}/favorites_guid")]
        public async Task<ActionResult<GetCustomerFavoriteGuidListQueryResponse>> GetCustomerFavoriteGuidListAsync(Guid customerId)
        {
            var result = await _mediator.Send(new GetCustomerFavoriteGuidListQuery(customerId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<GetCustomerFavoriteListQueryResponse>> GetCustomerFavoriteListAsync(Guid customerId, string entityType)
        {
            var result = await _mediator.Send(new GetCustomerFavoriteListQuery(customerId, entityType));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<CreateCustomerFavoriteCommandResponse>> CreateCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType)
        {
            var result = await _mediator.Send(new CreateCustomerFavoriteCommand(customerId, entityId, entityType));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<DeleteCustomerFavoriteCommandResponse>> DeleteCustomerFavoriteAsync(Guid customerId, Guid entityId, string entityType)
        {
            var result = await _mediator.Send(new DeleteCustomerFavoriteCommand(customerId, entityId, entityType));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet]
        [Route("{customerId}/appointments")]
        public async Task<ActionResult<GetCustomerAppointmentListQueryResponse>> GetCustomerAppointmentListAsync(Guid customerId, string status = "active")
        {
            var result = await _mediator.Send(new GetCustomerAppointmentListQuery(customerId, status));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost]
        [Route("search")]
        public async Task<ActionResult<GetCustomerSearchResultQueryResponse>> GetCustomerSearchResultAsync([FromBody] CustomerSearchDto searchDto)
        {
            var result = await _mediator.Send(new GetCustomerSearchResultQuery(searchDto));
            return _responseManager.MapActionResult(result);
        }
    }
}
