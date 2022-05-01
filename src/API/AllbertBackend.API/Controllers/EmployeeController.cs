using MediatR;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Text.Json;
using System.Threading.Tasks;
using AllbertBackend.API.Helpers;
using Microsoft.AspNetCore.Cors;
using AllbertBackend.Application.Features.Business.Commands.DeleteEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateEntityStatus;
using AllbertBackend.Application.Features.Customer.Commands.CreateCustomerRating;
using AllbertBackend.Application.Features.Employee.Commands.CreateWorkBlock;
using AllbertBackend.Application.Features.Employee.Commands.DeleteWorkBlock;
using AllbertBackend.Application.Features.Employee.Commands.UpdateEmployeeSettings;
using AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand;
using AllbertBackend.Application.Features.Employee.Commands.UpdateWorkBlock;
using AllbertBackend.Application.Features.Employee.Queries.EmployeeScheduleQuery;
using AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageListQuery;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeeQuery;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServiceListQuery;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeeSettings;
using AllbertBackend.Application.Features.Employee.Queries.ServiceStartTimeListQuery;
using AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Helpers;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Application.Features.Global.Commands.UploadImageCommand;
using AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeListQuery;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Domain.Helpers;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("api/[controller]")]
    public class EmployeeController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;

        public EmployeeController(IMediator mediator, IResponseManager responseManager)
        {
            _mediator = mediator;
            _responseManager = responseManager;
        }

        // ==================================================================== Employee Entity Management ====================================================================

        [HttpGet()]
        [Route("featured")]
        public async Task<ActionResult<GetFeaturedEmployeeListQueryResponse>> GetFeaturedEmployeeListAsync()
        {
            var result = await _mediator.Send(new GetFeaturedEmployeeListQuery());

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{employeeId}")]
        public async Task<ActionResult<GetEmployeeQueryResponse>> GetEmployeeAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new GetEmployeeQuery(employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}")]
        public async Task<ActionResult<UpdateEmployeeCommandResponse>> UpdateEmployeeAsync(Guid employeeId,
            [FromBody] EmployeeInfo employeeInfo)
        {
            var result = await _mediator.Send(new UpdateEmployeeCommand(employeeId, employeeInfo));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{employeeId}")]
        public async Task<ActionResult<DeleteEmployeeCommandResponse>> DeleteEmployeeAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new DeleteEmployeeCommand(employeeId));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Schedule Management ====================================================================

        [HttpGet("{employeeId}/schedule")]
        public async Task<ActionResult<EmployeeScheduleQueryResponse>> GetScheduleAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new EmployeeScheduleQuery(employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}/schedule")]
        public async Task<ActionResult<UpdateScheduleCommandResponse>> UpdateScheduleAsync(Guid employeeId,
            [FromBody] EmployeeScheduleUpdateDto schedule)
        {
            var result = await _mediator.Send(new UpdateScheduleCommand(employeeId, schedule));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}/workblock")]
        public async Task<ActionResult<CreateWorkBlockCommandResponse>> CreateWorkBlockAsync(Guid employeeId,
            [FromBody] EmployeeWorkBlock workBlock)
        {
            var result = await _mediator.Send(new CreateWorkBlockCommand(employeeId, workBlock));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}/workblock/{workBlockId}")]
        public async Task<ActionResult<UpdateWorkBlockCommandResponse>> UpdateWorkBlockAsync(Guid employeeId,
            Guid workBlockId,
            [FromBody] EmployeeWorkBlock workBlock)
        {
            var result = await _mediator.Send(new UpdateWorkBlockCommand(employeeId, workBlock));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{employeeId}/workblock/{workBlockId}")]
        public async Task<ActionResult<DeleteWorkBlockCommandResponse>> DeleteWorkBlockAsync(Guid employeeId,
            Guid workBlockId)
        {
            var result = await _mediator.Send(new DeleteWorkBlockCommand(employeeId, workBlockId));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Settings Management ====================================================================

        [HttpGet("{employeeId}/settings")]
        public async Task<ActionResult<EmployeeSettingsQueryResponse>> GetEmployeeSettingsAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new EmployeeSettingsQuery(employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}/settings")]
        public async Task<ActionResult<UpdateEmployeeSettingsCommandResponse>> UpdateEmployeeSettingsAsync(
            Guid employeeId, [FromBody] EmployeeSettings settings)
        {
            var result = await _mediator.Send(new UpdateEmployeeSettingsCommand(employeeId, settings));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Status Management ====================================================================

        [HttpPost("{employeeId}/status")]
        public async Task<ActionResult<UpdateEntityStatusCommandResponse>> UpdateStatusAsync(Guid employeeId,
            string value = "")
        {
            if (!CommonValidator.IsEntityStatusValid(value))
            {
                return NotFound("Invalid entity status");
            }

            var result =
                await _mediator.Send(new UpdateEntityStatusCommand(employeeId, EntityType.Employee,
                    value.GetEntityStatus()));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Avatar Image Management ====================================================================

        [HttpPost("{employeeId}/avatar")]
        public async Task<ActionResult<UploadImageCommandResponse>> UploadEmployeeAvatarImageAsync(Guid employeeId)
        {
            if (HttpContext.Request.Form.Files.Count < 1)
            {
                return NotFound(new UploadImageCommandResponse
                {
                    Success = false,
                    ErrorMessage = "File not found in request."
                });
            }

            var result = await _mediator.Send(new UploadImageCommand.UploadImageCommand(
                HttpContext.Request.Form.Files[0], EntityType.Employee, ImageType.Avatar, employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{employeeId}/avatar")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteEmployeeAvatarImageAsync(Guid employeeId)
        {
            var result =
                await _mediator.Send(
                    new DeleteImageCommand.DeleteImageCommand(employeeId, ImageType.Avatar, EntityType.Employee));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Portfolio Image Management ====================================================================

        [HttpGet("{employeeId}/portfolio")]
        public async Task<ActionResult<GetEmployeePortfolioImageListQueryResponse>> GetEmployeePortfolioImageListAsync(
            Guid employeeId)
        {
            var result = await _mediator.Send(new GetEmployeePortfolioImageListQuery(employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{employeeId}/portfolio")]
        public async Task<ActionResult<UploadImageCommandResponse>> UploadEmployeePortfolioImageAsync(Guid employeeId)
        {
            if (HttpContext.Request.Form.Files.Count < 1)
            {
                return NotFound(new UploadImageCommandResponse
                {
                    Success = false,
                    ErrorMessage = "File not found in request."
                });
            }

            var result = await _mediator.Send(new UploadImageCommand.UploadImageCommand(
                HttpContext.Request.Form.Files[0], EntityType.Employee, ImageType.Portfolio, employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{employeeId}/portfolio/{fileId}")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteEmployeePortfolioImageAsync(Guid employeeId,
            Guid fileId)
        {
            var result = await _mediator.Send(new DeleteImageCommand.DeleteImageCommand(employeeId, fileId,
                ImageType.Portfolio, EntityType.Employee));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{employeeId}/services")]
        public async Task<ActionResult<EmployeeServiceListQueryResponse>> GetEmployeeServiceListAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new EmployeeServiceListQuery(employeeId));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{employeeId}/dates/{serviceId}")]
        public async Task<ActionResult<ServiceStartTimeListQueryResponse>> GetServiceStartTimeListAsync(Guid employeeId,
            Guid serviceId)
        {
            var result = await _mediator.Send(new ServiceStartTimeListQuery(employeeId, serviceId));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{employeeId}/dates_v2/{serviceId}")]
        public async Task<ActionResult<ServiceStartTimeListQueryResponse>> GetServiceStartTimeListAsyncV2(
            Guid employeeId, Guid serviceId)
        {
            var result = await _mediator.Send(new ServiceStartTimeListQuery(employeeId, serviceId, true));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Reviews ====================================================================
        
        [HttpPost("{employeeId}/reviews", Name = "CreateCustomerReviewAsync")]
        public async Task<ActionResult<CreateCustomerReviewCommandResponse>> CreateCustomerReviewAsync(
            [FromBody] CustomerReview customerReview)
        {
            var result = await _mediator.Send(new CreateCustomerReviewCommand(customerReview));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{employeeId}/reviews", Name = "GetCustomerReviewList")]
        public async Task<ActionResult<GetCustomerReviewListQueryResponse>> GetCustomerReviewListAsync(Guid employeeId,
            [FromQuery] CustomerReviewQueryParameters parameters)
        {
            var result = await _mediator.Send(new GetCustomerReviewListQuery(employeeId, parameters));

            var previousPageLink = result.CustomerReviews.HasPrevious
                ? CreateCustomerReviewListResourceUri(parameters, ResourceUriType.Previous).TrimHostName()
                : null;
            var nextPageLink = result.CustomerReviews.HasNext
                ? CreateCustomerReviewListResourceUri(parameters, ResourceUriType.Next).TrimHostName()
                : null;

            var paginationMetadata = new
            {
                totalCount = result.CustomerReviews.TotalCount,
                pageSize = result.CustomerReviews.PageSize,
                currentPage = result.CustomerReviews.CurrentPage,
                totalPages = result.CustomerReviews.TotalPages,
                previousPageLink,
                nextPageLink,
            };

            result.PaginationData = paginationMetadata;

            Response.Headers.Add("X-Pagination",
                JsonSerializer.Serialize(paginationMetadata, JsonSerializerHelper.PaginationHeaderSerializerOptions));

            return _responseManager.MapActionResult(result);
        }

        private string CreateCustomerReviewListResourceUri(CustomerReviewQueryParameters parameters,
            ResourceUriType type)
        {
            if (type == ResourceUriType.Next)
            {
                var url = Url.Link("GetCustomerReviewList", new
                {
                    pageNumber = parameters.PageNumber + 1,
                    pageSize = parameters.PageSize,
                    //employeeId = parameters.EmployeeId == null ? null : parameters.EmployeeId.ToString(),
                    rating = parameters.Rating,
                    from = parameters.From,
                    until = parameters.Until,
                    orderBy = parameters.OrderBy,
                });
                return url;
            }

            if (type == ResourceUriType.Previous)
            {
                var link = Url.Link("GetCustomerReviewList", new
                {
                    pageNumber = parameters.PageNumber - 1,
                    pageSize = parameters.PageSize,
                    //employeeId = parameters.EmployeeId == null ? null : parameters.EmployeeId.ToString(),
                    rating = parameters.Rating,
                    from = parameters.From,
                    until = parameters.Until,
                    orderBy = parameters.OrderBy,
                });
                return link;
            }

            var finalLink = Url.Link("GetCustomerReviewList", new
            {
                pageNumber = parameters.PageNumber,
                pageSize = parameters.PageSize,
                //employeeId = parameters.EmployeeId == null ? null : parameters.EmployeeId.ToString(),
                rating = parameters.Rating,
                from = parameters.From,
                until = parameters.Until,
                orderBy = parameters.OrderBy,
            });
            return finalLink;
        }
    }
}