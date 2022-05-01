using AllbertBackend.Domain.Dtos;
using MediatR;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerSearchResultQuery
{
    public class GetCustomerSearchResultQuery : IRequest<GetCustomerSearchResultQueryResponse>
    {
        public CustomerSearchDto SearchDto { get; }

        public GetCustomerSearchResultQuery(CustomerSearchDto searchDto)
        {
            SearchDto = searchDto;
        }
    }
}
