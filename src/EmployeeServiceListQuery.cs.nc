using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeServices
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
