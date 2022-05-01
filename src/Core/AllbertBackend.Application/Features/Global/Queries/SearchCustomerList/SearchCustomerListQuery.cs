using MediatR;

namespace AllbertBackend.Application.Features.Global.Queries.SearchCustomerList
{
    public class SearchCustomerListQuery : IRequest<SearchCustomerListQueryResponse>
    {
        public SearchCustomerListQuery(string customerFlair)
        {
            CustomerFlair = customerFlair;
        }

        public string CustomerFlair { get; }
    }
}