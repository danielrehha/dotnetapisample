using MediatR;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomerCommand;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomerFavoriteCommand;
using AllbertBackend.Application.Features.Customer.Commands.DeleteCustomerFavoriteCommand;
using AllbertBackend.Application.Features.Customer.Commands.UpdateCustomerCommand;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerAppointmentListQuery;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteListQuery;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerInfoQuery;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerQuery;
using AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResultQuery;
using AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails;
using AllbertBackend.Application.Features.Global.Queries.SearchCustomerList;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Entities;
using Microsoft.AspNetCore.Cors;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
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

        // ==================================================================== Entity Management ====================================================================

        [HttpGet]
        public async Task<ActionResult<SearchCustomerListQueryResponse>> SearchCustomerListAsync(
            string customerFlair = "")
        {
            var result = await _mediator.Send(new SearchCustomerListQuery(customerFlair));

            return _responseManager.MapActionResult(result);
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
        public async Task<ActionResult<CreateCustomerCommandResponse>> CreateCustomerAsync(string firebaseUid,
            [FromBody] CustomerInfo info)
        {
            var result = await _mediator.Send(new CreateCustomerCommand(firebaseUid, info));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost]
        [Route("{customerId}/info")]
        public async Task<ActionResult<UpdateCustomerCommandResponse>> UpdateCustomerAsync(Guid customerId,
            [FromBody] CustomerInfo info)
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

        // ==================================================================== Favorite List Management ====================================================================

        [HttpGet]
        [Route("{customerId}/favorites_guid")]
        public async Task<ActionResult<GetCustomerFavoriteGuidListQueryResponse>> GetCustomerFavoriteGuidListAsync(
            Guid customerId)
        {
            var result = await _mediator.Send(new GetCustomerFavoriteGuidListQuery(customerId));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<GetCustomerFavoriteListQueryResponse>> GetCustomerFavoriteListAsync(
            Guid customerId, string entityType)
        {
            var result = await _mediator.Send(new GetCustomerFavoriteListQuery(customerId, entityType));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<CreateCustomerFavoriteCommandResponse>> CreateCustomerFavoriteAsync(
            Guid customerId, Guid entityId, string entityType)
        {
            var result = await _mediator.Send(new CreateCustomerFavoriteCommand(customerId, entityId, entityType));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete]
        [Route("{customerId}/favorites")]
        public async Task<ActionResult<DeleteCustomerFavoriteCommandResponse>> DeleteCustomerFavoriteAsync(
            Guid customerId, Guid entityId, string entityType)
        {
            var result = await _mediator.Send(new DeleteCustomerFavoriteCommand(customerId, entityId, entityType));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Appointment Management ====================================================================

        [HttpGet]
        [Route("{customerId}/appointments")]
        public async Task<ActionResult<GetCustomerAppointmentListQueryResponse>> GetCustomerAppointmentListAsync(
            Guid customerId, string status = "active")
        {
            var result = await _mediator.Send(new GetCustomerAppointmentListQuery(customerId, status));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Search ====================================================================

        [HttpPost]
        [Route("search")]
        public async Task<ActionResult<GetCustomerSearchResultQueryResponse>> GetCustomerSearchResultAsync(
            [FromBody] CustomerSearchDto searchDto)
        {
            var result = await _mediator.Send(new GetCustomerSearchResultQuery(searchDto));

            return _responseManager.MapActionResult(result);
        }
    }
}