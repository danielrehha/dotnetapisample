using MediatR;
using System;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServiceListQuery
{
    public class EmployeeServiceListQuery : IRequest<EmployeeServiceListQueryResponse>
    {
        public Guid EmployeeId { get; }

        public EmployeeServiceListQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
