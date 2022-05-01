using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessCustomerList
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
