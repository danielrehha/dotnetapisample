using System;
using AllbertBackend.Domain.Dtos;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList
{
    public class GetCustomerReviewListQuery : IRequest<GetCustomerReviewListQueryResponse>
    {
        public GetCustomerReviewListQuery(Guid employeeId, CustomerReviewQueryParameters parameters)
        {
            Parameters = parameters;
            EmployeeId = employeeId;
        }

        public Guid EmployeeId { get; }
        public CustomerReviewQueryParameters Parameters { get; }
    }
}