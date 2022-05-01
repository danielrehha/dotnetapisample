using System;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeSettings
{
    public class EmployeeSettingsQuery : IRequest<EmployeeSettingsQueryResponse>
    {
        public EmployeeSettingsQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }

        public Guid EmployeeId { get; }
    }
}