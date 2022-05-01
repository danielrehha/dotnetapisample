using System;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Employee.Queries.GetAvailableServiceDates
{
    public class ServiceStartTimeListQueryResponse : BaseResponse
    {
        public List<DateTime> StartTimes { get; set; } = new();
    }
}
