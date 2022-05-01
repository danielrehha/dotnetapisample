using AllbertBackend.Domain.Entities;
using System;
using System.Collections.Generic;
namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerFavoriteGuidList
{
    public class GetCustomerFavoriteGuidListQueryResponse : BaseResponse
    {
        public List<Guid> Favorites { get; set; } = new();
    }
}
