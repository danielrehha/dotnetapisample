using System.Collections.Generic;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteListQuery
{
    public class GetCustomerFavoriteListQueryResponse : BaseResponse
    {
        public List<CustomerFavoriteVm> Favorites { get; set; } = new List<CustomerFavoriteVm>();
    }
}