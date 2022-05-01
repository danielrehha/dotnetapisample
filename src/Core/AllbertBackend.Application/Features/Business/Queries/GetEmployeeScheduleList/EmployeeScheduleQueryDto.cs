using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery
{
    public class EmployeeScheduleQueryDto
    {
        public Guid BusinessId { get; set; }
        public List<Guid> EmployeeIds { get;set; }
        public DateTime From { get;set; }
        public DateTime Until { get;set; }
    }
}