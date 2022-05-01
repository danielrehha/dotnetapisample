using Microsoft.AspNetCore.Mvc;

namespace AllbertBackend.Domain.Dtos
{
    public class BusinessCustomerQueryParameters
    {
        [FromQuery(Name = "pageNumber")]
        public int PageNumber { get; set; }
        [FromQuery(Name = "pageSize")]
        public int PageSize { get; set; }
        [FromQuery(Name = "customerFlair")]
        public string CustomerFlair { get; set; }
        [FromQuery(Name = "banned")]
        public bool? Banned { get; set; }
        [FromQuery(Name = "orderBy")]
        public string OrderBy { get; set; }
    }
}
