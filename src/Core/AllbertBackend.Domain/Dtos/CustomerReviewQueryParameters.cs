using System;
using Microsoft.AspNetCore.Mvc;

namespace AllbertBackend.Domain.Dtos
{
    public class CustomerReviewQueryParameters
    {
        [FromQuery(Name = "pageNumber")]
        public int PageNumber { get; set; }
        [FromQuery(Name = "pageSize")]
        public int PageSize { get; set; }
        [FromQuery(Name = "employeeId")]
        public Guid? EmployeeId { get; set; }
        [FromQuery(Name = "rating")]
        public int? Rating { get; set; }
        [FromQuery(Name = "from")]
        public DateTime? From { get; set; }
        [FromQuery(Name = "until")]
        public DateTime? Until { get; set; }
        [FromQuery(Name = "orderBy")]
        public string OrderBy { get; set; }
    }
}