using AllbertBackend.Application.Features.Customer.ViewModels;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteList
{
    public class GetCustomerFavoriteListQueryResponse : BaseResponse
    {
        public List<CustomerFavoriteVm> Favorites { get; set; } = new List<CustomerFavoriteVm>();
    }
}
