using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeQuery
{
    public class GetEmployeeQuery : IRequest<GetEmployeeQueryResponse>
    {
        public Guid EmployeeId { get; }

        public GetEmployeeQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
