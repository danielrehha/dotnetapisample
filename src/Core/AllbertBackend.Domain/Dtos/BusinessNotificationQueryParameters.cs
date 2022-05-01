using Microsoft.AspNetCore.Mvc;

namespace AllbertBackend.Domain.Dtos
{
    public class BusinessNotificationQueryParameters
    {
        [FromQuery(Name = "pageNumber")]
        public int PageNumber { get; set; }
        [FromQuery(Name = "pageSize")]
        public int PageSize { get; set; }
    }
}
