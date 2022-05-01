using System;
using System.Threading.Tasks;
using AllbertBackend.API.Helpers;
using AllbertBackend.Application.Features.Statistics.Business.AppointmentCountStatistics;
using MediatR;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("api/[controller]")]
    public class StatisticsController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly IResponseManager _responseManager;

        public StatisticsController(IMediator mediator, IResponseManager responseManager)
        {
            _mediator = mediator;
            _responseManager = responseManager;
        }
    }
}