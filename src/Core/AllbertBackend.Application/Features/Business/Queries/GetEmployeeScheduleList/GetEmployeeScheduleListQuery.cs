using MediatR;
using System;
using System.Collections.Generic;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeScheduleListQuery
{
    public class GetEmployeeScheduleListQuery : IRequest<GetEmployeeScheduleListQueryResponse>
    {
        public EmployeeScheduleQueryDto EmployeeScheduleQueryDto { get; }

        public GetEmployeeScheduleListQuery(Guid businessId, List<Guid> employeeIds, DateTime from, DateTime until)
        {
            EmployeeScheduleQueryDto = new EmployeeScheduleQueryDto();
            
            EmployeeScheduleQueryDto.BusinessId = businessId;
            EmployeeScheduleQueryDto.EmployeeIds = employeeIds;
            EmployeeScheduleQueryDto.From = from;
            EmployeeScheduleQueryDto.Until = until;
        }
    }
}