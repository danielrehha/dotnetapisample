using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.AvailableTimeslotList
{
    public class AvailableTimeslotListQuery : IRequest<AvailableTimeslotListQueryResponse>
    {
        public Guid EmployeeId { get; }
        public AvailableTimeslotListQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
