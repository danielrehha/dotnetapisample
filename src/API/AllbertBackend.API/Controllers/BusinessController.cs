using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Text.Json;
using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Business.Commands.BanCustomerCommand;
using AllbertBackend.Application.Features.Business.Commands.CreateBusinessV2;
using AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand;
using AllbertBackend.Application.Features.Business.Commands.UnBanCustomerCommand;
using AllbertBackend.Application.Features.Business.Commands.UpdateAddress;
using AllbertBackend.Application.Features.Business.Commands.UpdateContact;
using AllbertBackend.Application.Features.Business.Commands.UpdateDetails;
using AllbertBackend.Application.Features.Business.Commands.UpdateSettingsCommand;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessAppointmentListQueryV2;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessNotificationListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessPortfolioImageListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessQuery;
using AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList;
using AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery;
using AllbertBackend.Application.Features.Business.Queries.GetScheduleQuery;
using AllbertBackend.Application.Features.Global.Commands.DeleteImageCommand;
using AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Helpers;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Application.Features.Global.Commands.UploadImageCommand;
using AllbertBackend.Application.Features.Global.Queries.GetFeaturedBusinessListQuery;
using AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Dtos;
using AllbertBackend.Domain.Enums;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
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

        // ==================================================================== Entity Management ====================================================================

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

        [HttpGet("{firebaseUid}/{langIso639Code}")]
        public async Task<ActionResult<CreateBusinessCommandV2Response>> CreateBusinessAsyncV2(string firebaseUid, string langIso639Code)
        {
            var result = await _mediator.Send(new CreateBusinessCommandV2(firebaseUid, langIso639Code));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{businessId}/details")]
        public async Task<ActionResult<UpdateBusinessDetailsCommandResponse>> UpdateDetailsAsync(Guid businessId, [FromBody] BusinessDetails details)
        {
            var result = await _mediator.Send(new UpdateBusinessDetailsCommand(businessId, details));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpPost("{businessId}/address")]
        public async Task<ActionResult<UpdateBusinessAddressCommandResponse>> UpdateAddressAsync(Guid businessId, [FromBody] BusinessAddress address)
        {
            var result = await _mediator.Send(new UpdateBusinessAddressCommand(businessId, address));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpPost("{businessId}/contact")]
        public async Task<ActionResult<UpdateBusinessContactCommandResponse>> UpdateContactAsync(Guid businessId, [FromBody] BusinessContact contact)
        {
            var result = await _mediator.Send(new UpdateBusinessContactCommand(businessId, contact));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Settings ====================================================================

        [HttpPost("{businessId}/settings")]
        public async Task<ActionResult<UpdateBusinessSettingsCommandResponse>> UpdateBusinessSettingsAsync(Guid businessId, [FromBody] BusinessSettings settings)
        {
            var result = await _mediator.Send(new UpdateBusinessSettingsCommand(businessId, settings));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Avatar Management ====================================================================

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

            var result = await _mediator.Send(new UploadImageCommand.UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Business, ImageType.Avatar, businessId));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{businessId}/avatar")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteBusinessAvatarImageAsync(Guid businessId)
        {
            var result = await _mediator.Send(new DeleteImageCommand.DeleteImageCommand(businessId, ImageType.Avatar, EntityType.Business));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Portfolio Management ====================================================================

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

            var result = await _mediator.Send(new UploadImageCommand.UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Business, ImageType.Portfolio, businessId));

            return _responseManager.MapActionResult(result);
        }

        [HttpDelete("{businessId}/portfolio/{fileId}")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteBusinessPortfolioImageAsync(Guid businessId, Guid fileId)
        {
            var result = await _mediator.Send(new DeleteImageCommand.DeleteImageCommand(businessId, fileId, ImageType.Portfolio, EntityType.Business));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Employee Management ====================================================================

        [HttpGet("{businessId}/employees")]
        public async Task<ActionResult<GetEmployeeListQueryResponse>> GetEmployeeListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetEmployeeListQuery(businessId));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpGet("{businessId}/employees/names")]
        public async Task<ActionResult<GetEmployeeNameListQueryResponse>> GetEmployeeNameListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetEmployeeNameListQuery(businessId));

            return _responseManager.MapActionResult(result);
        }

        [HttpPost("{businessId}/employees")]
        public async Task<ActionResult<CreateEmployeeCommandResponse>> CreateEmployeeAsync(Guid businessId, [FromBody] EmployeeInfo employeeInfo)
        {
            var result = await _mediator.Send(new CreateEmployeeCommand(businessId, employeeInfo));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Service Management ====================================================================

        [HttpGet("{businessId}/services")]
        public async Task<ActionResult<GetBusinessServiceListQueryResponse>> GetServiceListAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetBusinessServiceListQuery(businessId));

            return _responseManager.MapActionResult(result);
        }
        
        // ==================================================================== Calendar Management ====================================================================

        [HttpPost("{businessId}/calendar")]
        public async Task<ActionResult<GetEmployeeScheduleListQueryResponse>> GetEmployeeScheduleListAsync(Guid businessId, [FromBody] List<Guid> employeeIds,DateTime from, DateTime until)
        {
            var result = await _mediator.Send(new GetEmployeeScheduleListQuery(businessId,employeeIds,from,until));

            return _responseManager.MapActionResult(result);
        }

        [HttpGet("{businessId}/schedule")]
        public async Task<ActionResult<GetScheduleQueryResponse>> GetScheduleAsync(Guid businessId)
        {
            var result = await _mediator.Send(new GetScheduleQuery(businessId));

            return _responseManager.MapActionResult(result);
        }
        
        // ==================================================================== Customer Management ====================================================================

        [HttpGet("{businessId}/ban/{customerId}")]
        public async Task<ActionResult<BanCustomerCommandResponse>> BanCustomerAsync(Guid businessId, Guid customerId)
        {
            var result = await _mediator.Send(new BanCustomerCommand(businessId, customerId));

            return _responseManager.MapActionResult(result);
        }
        
        [HttpGet("{businessId}/unban/{customerId}")]
        public async Task<ActionResult<UnBanCustomerCommandResponse>> UnBanCustomerAsync(Guid businessId, Guid customerId)
        {
            var result = await _mediator.Send(new UnBanCustomerCommand(businessId, customerId));

            return _responseManager.MapActionResult(result);
        }

        // ==================================================================== Appointment Management ====================================================================

        /*[HttpGet("{businessId}/appointments")]
        public async Task<ActionResult<GetBusinessAppointmentListQueryResponse>> GetBusinessAppointmentListAsync(Guid businessId, string status)
        {
            var enumStatus = AppointmentStatusResolver.ResolveStatus(status);
            var result = await _mediator.Send(new GetBusinessAppointmentListQuery(businessId, enumStatus));

            return _responseManager.MapActionResult(result);
        }*/

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
        
        [HttpPost("{businessId}/statistics/count/appointment")]
        public async Task<ActionResult<AppointmentCountStatisticsQueryResponse>> GetAppointmentCountStatistics([FromBody] List<Guid> employeeIds,
            Guid businessId, DateTime from, DateTime until)
        {
            var result = await _mediator.Send(new AppointmentCountStatisticsQuery(businessId, employeeIds,from, until));

            return _responseManager.MapActionResult(result);
        }
    }
}
