using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Business.Commands.CreateBusiness;
using AllbertBackend.Application.Features.Business.Commands.UpdateBusiness;
using AllbertBackend.Application.Features.Business.Queries;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListAsync;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageList;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleList;
using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Features.Business.Commands.CreateEmployee;
using AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessList;
using AllbertBackend.Domain.Algorithms;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Enums;
using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Global.Commands.UploadImage;
using AllbertBackend.Application.Features.Global.Commands.DeleteImage;
using AllbertBackend.Application.Features.Business.Queries.GetSchedule;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListPaged;
using System.Text.Json;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationList;
using AllbertBackend.Application.Features.Business.Commands.UpdateSettings;
namespace AllbertBackend.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("api/[controller]")]
    public class BusinessController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;
        public BusinessController(IMediator mediator, IResponseManager responseManager)
        {
            _mediator = mediator;
            _responseManager = responseManager;
        }
        [HttpGet("all")]
        public async Task<ActionResult<IReadOnlyList<BusinessVm>>> GetBusinessListAsync()
        {
            var result = await _mediator.Send(new GetBusinessListQuery());
            return Ok(result);
        }
        [HttpGet("featured")]
        public async Task<ActionResult<GetFeaturedBusinessListQueryResponse>> GetFeaturedBusinessListAsync()
        {
            var result = await _mediator.Send(new GetFeaturedBusinessListQuery());
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{firebaseUid}")]
        public async Task<ActionResult<GetBusinessQueryResponse>> GetByFirebaseUidAsync(string firebaseUid)
        {
            var result = await _mediator.Send(new GetBusinessQuery(firebaseUid));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{firebaseUid}")]
        public async Task<ActionResult<CreateBusinessCommandResponse>> CreateBusinessAsync(string firebaseUid, [FromBody] BusinessInfo businessInfo)
        {
            var result = await _mediator.Send(new CreateBusinessCommand(firebaseUid, businessInfo));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{businessId}/info")]
        public async Task<ActionResult<UpdateBusinessCommandResponse>> UpdateBusinessAsync(Guid businessId, [FromBody] BusinessInfo businessInfo)
        {
            if (businessInfo == null)
            {
                return NotFound("No BusinessInfo model was provided in the request.");
            }
            var result = await _mediator.Send(new UpdateBusinessCommand(businessInfo));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{businessId}/settings")]
        public async Task<ActionResult<UpdateBusinessSettingsCommandResponse>> UpdateBusinessSettingsAsync(Guid businessId, [FromBody] BusinessSettings settings)
        {
            var result = await _mediator.Send(new UpdateBusinessSettingsCommand(businessId, settings));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{businessId}/avatar")]
        public async Task<ActionResult<UploadImageCommandResponse>> UploadBusinessAvatarImageAsync(Guid businessId)
        {
            if (HttpContext.Request.Form.Files.Count < 1)
            {
                return NotFound(new UploadImageCommandResponse
                {
                    Success = false,
                    ErrorMessage = "File not found in request."
                });
            }
            var result = await _mediator.Send(new UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Business, ImageType.Avatar, businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{businessId}/avatar")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteBusinessAvatarImageAsync(Guid businessId)
        {
            var result = await _mediator.Send(new DeleteImageCommand(businessId, ImageType.Avatar, EntityType.Business));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/portfolio")]
        public async Task<ActionResult<GetBusinessPortfolioImageListQueryResponse>> GetBusinesPortfolioImageListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetBusinessPortfolioImageListQuery(businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{businessId}/portfolio")]
        public async Task<ActionResult<UploadImageCommandResponse>> UploadBusinessPortfolioImageAsync(Guid businessId)
        {
            if (HttpContext.Request.Form.Files.Count < 1)
            {
                return NotFound(new UploadImageCommandResponse
                {
                    Success = false,
                    HadErrors = true,
                    ErrorMessage = "File not found in request."
                });
            }
            var result = await _mediator.Send(new UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Business, ImageType.Portfolio, businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{businessId}/portfolio/{fileId}")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteBusinessPortfolioImageAsync(Guid businessId, Guid fileId)
        {
            var result = await _mediator.Send(new DeleteImageCommand(businessId, fileId, ImageType.Portfolio, EntityType.Business));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/employees")]
        public async Task<ActionResult<GetEmployeeListQueryResponse>> GetEmployeeListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetEmployeeListQuery(businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{businessId}/employees")]
        public async Task<ActionResult<CreateEmployeeCommandResponse>> CreateEmployeeAsync(Guid businessId, [FromBody] EmployeeInfo employeeInfo)
        {
            var result = await _mediator.Send(new CreateEmployeeCommand(businessId, employeeInfo));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/services")]
        public async Task<ActionResult<GetBusinessServiceListQueryResponse>> GetServiceListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetBusinessServiceListQuery(businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/calendar")]
        public async Task<ActionResult<GetEmployeeScheduleListQueryResponse>> GetEmployeeScheduleListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetEmployeeScheduleListQuery(businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/schedule")]
        public async Task<ActionResult<GetScheduleQueryResponse>> GetScheduleAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetScheduleQuery(businessId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/appointments")]
        public async Task<ActionResult<GetBusinessAppointmentListQueryResponse>> GetBusinessAppointmentListAsync(Guid businessId, string status)
        {
            var enumStatus = AppointmentStatusResolver.ResolveStatus(status);
            var result = await _mediator.Send(new GetBusinessAppointmentListQuery(businessId, enumStatus));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/appointments_v2", Name = "GetBusinessAppointmentList")]
        public async Task<ActionResult<GetBusinessAppointmentListQueryV2Response>> GetBusinessAppointmentListAsyncV2(Guid businessId, [FromQuery] BusinessAppointmentQueryParameters parameters)
        {
            var result = await _mediator.Send(new GetBusinessAppointmentListQueryV2(businessId, parameters));
            var previousPageLink = result.Appointments.HasPrevious ? CreateBusinessAppointmentListResourceUri(parameters, ResourceUriType.Previous).TrimHostName() : null;
            var nextPageLink = result.Appointments.HasNext ? CreateBusinessAppointmentListResourceUri(parameters, ResourceUriType.Next).TrimHostName() : null;
            var paginationMetadata = new
            {
                totalCount = result.Appointments.TotalCount,
                pageSize = result.Appointments.PageSize,
                currentPage = result.Appointments.CurrentPage,
                totalPages = result.Appointments.TotalPages,
                previousPageLink,
                nextPageLink,
            };
            result.PaginationData = paginationMetadata;
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata, JsonSerializerHelper.PaginationHeaderSerializerOptions));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/customers", Name = "GetBusinessCustomerList")]
        public async Task<ActionResult<GetBusinessCustomerListQueryResponse>> GetBusinessCustomerListAsyncV2(Guid businessId, [FromQuery] BusinessCustomerQueryParameters parameters)
        {
            var result = await _mediator.Send(new GetBusinessCustomerListQuery(businessId, parameters));
            var previousPageLink = result.Customers.HasPrevious ? CreateBusinessCustomerListResourceUri(parameters, ResourceUriType.Previous).TrimHostName() : null;
            var nextPageLink = result.Customers.HasNext ? CreateBusinessCustomerListResourceUri(parameters, ResourceUriType.Next).TrimHostName() : null;
            var paginationMetadata = new
            {
                totalCount = result.Customers.TotalCount,
                pageSize = result.Customers.PageSize,
                currentPage = result.Customers.CurrentPage,
                totalPages = result.Customers.TotalPages,
                previousPageLink,
                nextPageLink,
            };
            result.PaginationData = paginationMetadata;
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata, JsonSerializerHelper.PaginationHeaderSerializerOptions));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{businessId}/notifications", Name = "GetBusinessNotificationList")]
        public async Task<ActionResult<GetBusinessNotificationListQueryResponse>> GetBusinessNotificationListAsync(Guid businessId, [FromQuery] BusinessNotificationQueryParameters parameters)
        {
            var result = await _mediator.Send(new GetBusinessNotificationListQuery(businessId, parameters));
            var previousPageLink = result.Notifications.HasPrevious ? CreateBusinessCustomerListResourceUri(parameters, ResourceUriType.Previous).TrimHostName() : null;
            var nextPageLink = result.Notifications.HasNext ? CreateBusinessCustomerListResourceUri(parameters, ResourceUriType.Next).TrimHostName() : null;
            var paginationMetadata = new
            {
                totalCount = result.Notifications.TotalCount,
                pageSize = result.Notifications.PageSize,
                currentPage = result.Notifications.CurrentPage,
                totalPages = result.Notifications.TotalPages,
                previousPageLink,
                nextPageLink,
            };
            result.PaginationData = paginationMetadata;
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata, JsonSerializerHelper.PaginationHeaderSerializerOptions));
            return _responseManager.MapActionResult(result);
        }
        private string CreateBusinessAppointmentListResourceUri(BusinessAppointmentQueryParameters parameters, ResourceUriType type)
        {
            if (type == ResourceUriType.Next)
            {
                return Url.Link("GetBusinessAppointmentList", new
                {
                    pageNumber = parameters.PageNumber + 1,
                    pageSize = parameters.PageSize,
                    employeeId = parameters.EmployeeId,
                    serviceId = parameters.ServiceId,
                    customerFlair = parameters.CustomerFlair,
                    date = parameters.Date,
                    orderByDescending = parameters.OrderByDescending,
                });
            }
            if (type == ResourceUriType.Previous)
            {
                return Url.Link("GetBusinessAppointmentList", new
                {
                    pageNumber = parameters.PageNumber - 1,
                    pageSize = parameters.PageSize,
                    employeeId = parameters.EmployeeId,
                    serviceId = parameters.ServiceId,
                    customerFlair = parameters.CustomerFlair,
                    date = parameters.Date,
                    orderByDescending = parameters.OrderByDescending,
                });
            }
            return Url.Link("GetBusinessAppointmentList", new
            {
                pageNumber = parameters.PageNumber,
                pageSize = parameters.PageSize,
                employeeId = parameters.EmployeeId,
                serviceId = parameters.ServiceId,
                customerFlair = parameters.CustomerFlair,
                date = parameters.Date,
                orderByDescending = parameters.OrderByDescending,
            });
        }
        private string CreateBusinessCustomerListResourceUri(BusinessCustomerQueryParameters parameters, ResourceUriType type)
        {
            if (type == ResourceUriType.Next)
            {
                return Url.Link("GetBusinessCustomerList", new
                {
                    pageNumber = parameters.PageNumber + 1,
                    pageSize = parameters.PageSize,
                    customerFlair = parameters.CustomerFlair,
                    banned = parameters.Banned,
                    orderBy = parameters.OrderBy,
                });
            }
            if (type == ResourceUriType.Previous)
            {
                return Url.Link("GetBusinessCustomerList", new
                {
                    pageNumber = parameters.PageNumber - 1,
                    pageSize = parameters.PageSize,
                    customerFlair = parameters.CustomerFlair,
                    banned = parameters.Banned,
                    orderBy = parameters.OrderBy,
                });
            }
            return Url.Link("GetBusinessCustomerList", new
            {
                pageNumber = parameters.PageNumber,
                pageSize = parameters.PageSize,
                customerFlair = parameters.CustomerFlair,
                banned = parameters.Banned,
                orderBy = parameters.OrderBy,
            });
        }
        private string CreateBusinessCustomerListResourceUri(BusinessNotificationQueryParameters parameters, ResourceUriType type)
        {
            if (type == ResourceUriType.Next)
            {
                return Url.Link("GetBusinessNotificationList", new
                {
                    pageNumber = parameters.PageNumber + 1,
                    pageSize = parameters.PageSize,
                });
            }
            if (type == ResourceUriType.Previous)
            {
                return Url.Link("GetBusinessNotificationList", new
                {
                    pageNumber = parameters.PageNumber - 1,
                    pageSize = parameters.PageSize,
                });
            }
            return Url.Link("GetBusinessNotificationList", new
            {
                pageNumber = parameters.PageNumber,
                pageSize = parameters.PageSize,
            });
        }
    }
}
