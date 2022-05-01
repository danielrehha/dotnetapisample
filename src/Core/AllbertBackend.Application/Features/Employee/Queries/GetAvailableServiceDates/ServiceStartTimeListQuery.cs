using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Employee.Queries.ServiceStartTimeListQuery
{
    public class ServiceStartTimeListQuery : IRequest<ServiceStartTimeListQueryResponse>
    {
        public ServiceStartTimeListQuery(Guid employeeId, Guid serviceId)
        {
            EmployeeId = employeeId;
            ServiceId = serviceId;
        }

        public ServiceStartTimeListQuery(Guid employeeId, Guid serviceId, bool useV2)
        {
            EmployeeId = employeeId;
            ServiceId = serviceId;
            UseV2 = useV2;
        }

        public Guid EmployeeId { get; }
        public Guid ServiceId { get; }
        public bool UseV2 { get; set; } = false;
    }
}
