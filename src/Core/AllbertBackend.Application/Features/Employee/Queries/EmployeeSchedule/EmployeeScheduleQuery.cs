using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeScheduleQuery
{
    public class EmployeeScheduleQuery : IRequest<EmployeeScheduleQueryResponse>
    {
        public Guid EmployeeId { get; }

        public EmployeeScheduleQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
