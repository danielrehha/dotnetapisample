using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Employee.Commands.CreateAvailableTimeslot;
using AllbertBackend.Application.Features.Employee.Commands.DeleteAvailableTimeslot;
using AllbertBackend.Application.Features.Employee.Commands.CreateBookedTimeslot;
using AllbertBackend.Application.Features.Employee.Commands.UpdateAvailableTimeslot;
using AllbertBackend.Application.Features.Employee.Queries.AvailableTimeslotList;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployee;
using AllbertBackend.Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using AllbertBackend.Application.Features.Employee.Commands.DeleteBookedTimeslot;
using AllbertBackend.Application.Features.Employee.Queries.BookedTimeslotList;
using AllbertBackend.Application.Features.Employee.Queries.EmployeeSchedule;
using AllbertBackend.Application.Features.Employee.Commands.UpdateBookedTimeslot;
using Microsoft.AspNetCore.Cors;
using AllbertBackend.Application.Features.Business.Commands.UpdateEmployee;
using AllbertBackend.Application.Features.Business.Commands.DeleteEmployee;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageList;
using AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServices;
using AllbertBackend.Application.Features.Employee.Queries.GetAvailableServiceDates;
using AllbertBackend.Application.Features.Global.Queries.GetFeaturedEmployeeList;
using AllbertBackend.Application.Features.Global.Commands.UploadImage;
using AllbertBackend.Domain.Enums;
using AllbertBackend.Application.Features.Global.Commands.DeleteImage;
using AllbertBackend.Application.Features.Employee.Commands.UpdateSchedule;
using AllbertBackend.Domain.Entities.Shared;
using System.Collections.Generic;
using AllbertBackend.Domain.Dtos;
namespace AllbertBackend.API.Controllers
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
        public async Task<ActionResult<UpdateEmployeeCommandResponse>> UpdateEmployeeAsync(Guid employeeId, [FromBody] EmployeeInfo employeeInfo)
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
        [HttpGet("{employeeId}/available_timeslots")]
        public async Task<ActionResult<AvailableTimeslotListQueryResponse>> AvailableTimeslotListAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new AvailableTimeslotListQuery(employeeId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{employeeId}/available_timeslots")]
        public async Task<ActionResult<CreateAvailableTimeslotCommandResponse>> CreateAvailableTimeslotAsync(Guid employeeId, [FromBody] AvailableTimeslot timeslot)
        {
            var result = await _mediator.Send(new CreateAvailableTimeslotCommand(employeeId, timeslot));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{employeeId}/available_timeslots/{timeslotId}")]
        public async Task<ActionResult<DeleteAvailableTimeslotCommandResponse>> DeleteAvailableTimeslotAsync(Guid employeeId, Guid timeslotId)
        {
            var result = await _mediator.Send(new DeleteAvailableTimeslotCommand(employeeId, timeslotId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{employeeId}/available_timeslots/{timeslotId}")]
        public async Task<ActionResult<UpdateAvailableTimeslotCommandResponse>> UpdateAvailableTimeslotAsync(Guid employeeId, Guid timeslotId, [FromBody] AvailableTimeslot timeslot)
        {
            var result = await _mediator.Send(new UpdateAvailableTimeslotCommand(employeeId, timeslotId, timeslot));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{employeeId}/schedule")]
        public async Task<ActionResult<UpdateScheduleCommandResponse>> UpdateScheduleAsync(Guid employeeId, [FromBody] EmployeeScheduleUpdateDto schedule)
        {
            var result = await _mediator.Send(new UpdateScheduleCommand(employeeId, schedule));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/booked_timeslots")]
        public async Task<ActionResult<BookedTimeslotListQueryResponse>> BookedTimeslotListAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new BookedTimeslotListQuery(employeeId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{employeeId}/booked_timeslots")]
        public async Task<ActionResult<CreateBookedTimeslotCommandResponse>> CreateBookedTimeslotAsync(Guid employeeId, [FromBody] Appointment timeslot)
        {
            var result = await _mediator.Send(new CreateBookedTimeslotCommand(employeeId, timeslot));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{employeeId}/booked_timeslots/{timeslotId}")]
        public async Task<ActionResult<DeleteBookedTimeslotCommandResponse>> DeleteBookedTimeslotAsync(Guid employeeId, Guid timeslotId)
        {
            var result = await _mediator.Send(new DeleteBookedTimeslotCommand(employeeId, timeslotId));
            return _responseManager.MapActionResult(result);
        }
        [HttpPost("{employeeId}/booked_timeslots/{timeslotId}")]
        public async Task<ActionResult<UpdateBookedTimeslotCommandResponse>> UpdateBookedTimeslotAsync(Guid employeeId, Guid timeslotId, [FromBody] Appointment timeslot)
        {
            var result = await _mediator.Send(new UpdateBookedTimeslotCommand(employeeId, timeslotId, timeslot));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/schedule")]
        public async Task<ActionResult<EmployeeScheduleQueryResponse>> GetScheduleAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new EmployeeScheduleQuery(employeeId));
            return _responseManager.MapActionResult(result);
        }
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
            var result = await _mediator.Send(new UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Employee, ImageType.Avatar, employeeId));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{employeeId}/avatar")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteEmployeeAvatarImageAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new DeleteImageCommand(employeeId, ImageType.Avatar, EntityType.Employee));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/portfolio")]
        public async Task<ActionResult<GetEmployeePortfolioImageListQueryResponse>> GetEmployeePortfolioImageListAsync(Guid employeeId)
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
            var result = await _mediator.Send(new UploadImageCommand(HttpContext.Request.Form.Files[0], EntityType.Employee, ImageType.Portfolio, employeeId));
            return _responseManager.MapActionResult(result);
        }
        [HttpDelete("{employeeId}/portfolio/{fileId}")]
        public async Task<ActionResult<DeleteImageCommandResponse>> DeleteEmployeePortfolioImageAsync(Guid employeeId, Guid fileId)
        {
            var result = await _mediator.Send(new DeleteImageCommand(employeeId, fileId, ImageType.Portfolio, EntityType.Employee));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/services")]
        public async Task<ActionResult<EmployeeServiceListQueryResponse>> GetEmployeeServiceListAsync(Guid employeeId)
        {
            var result = await _mediator.Send(new EmployeeServiceListQuery(employeeId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/dates/{serviceId}")]
        public async Task<ActionResult<ServiceStartTimeListQueryResponse>> GetServiceStartTimeListAsync(Guid employeeId, Guid serviceId)
        {
            var result = await _mediator.Send(new ServiceStartTimeListQuery(employeeId, serviceId));
            return _responseManager.MapActionResult(result);
        }
        [HttpGet("{employeeId}/dates_v2/{serviceId}")]
        public async Task<ActionResult<ServiceStartTimeListQueryResponse>> GetServiceStartTimeListAsyncV2(Guid employeeId, Guid serviceId)
        {
            var result = await _mediator.Send(new ServiceStartTimeListQuery(employeeId, serviceId, true));
            return _responseManager.MapActionResult(result);
        }
    }
}
