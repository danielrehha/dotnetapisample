using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeePortfolioImageListQuery
{
    public class GetEmployeePortfolioImageListQuery : IRequest<GetEmployeePortfolioImageListQueryResponse>
    {
        public Guid EmployeeId { get; }

        public GetEmployeePortfolioImageListQuery(Guid employeeId)
        {
            EmployeeId = employeeId;
        }
    }
}
