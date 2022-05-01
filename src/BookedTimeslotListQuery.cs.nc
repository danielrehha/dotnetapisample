using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.BookedTimeslotList
{
    public class BookedTimeslotListQuery : IRequest<BookedTimeslotListQueryResponse>
    {
        public Guid EmployeeId { get; }
        public BookedTimeslotListQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
