using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Employee.Queries.ServiceStartTimeListQuery
{
    public class ServiceStartTimeListQueryResponse : BaseResponse
    {
        public List<DateTime> StartTimes { get; set; } = new();
    }
}