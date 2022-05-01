using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Dtos
{
    public class BusinessAppointmentQueryParameters
    {
        [FromQuery(Name = "pageNumber")]
        public int PageNumber { get; set; }
        [FromQuery(Name = "pageSize")]
        public int PageSize { get; set; }
        [FromQuery(Name = "employeeId")]
        public Guid? EmployeeId { get; set; }
        [FromQuery(Name = "status")]
        public int? Status { get; set; }
        [FromQuery(Name = "customerFlair")]
        public string CustomerFlair { get; set; }
        [FromQuery(Name = "serviceId")]
        public Guid? ServiceId { get; set; }
        [FromQuery(Name = "date")]
        public DateTime? Date { get; set; }
        [FromQuery(Name = "orderByDescending")]
        public bool? OrderByDescending { get; set; }
    }
}
