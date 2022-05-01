using System;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Entities
{
    public class Appointment : BaseEntity
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        /// <summary>
        /// Status:
        /// 0 - Active;
        /// 1 - In Review;
        /// 2 - Reviewed: Customer came;
        /// 3 - Reviewed: Customer didn't show up;
        /// 4 - Deleted by customer;
        /// 5 - Deleted by business;
        /// </summary>
        public int Status { get; set; } = 0;

        public Guid? EmployeeId { get; set; }
        public Employee Employee { get; set; }

        public Guid BusinessId { get; set; }

        //public Guid RatingId { get; set; }
        //public Rating Rating { get; set; }

        public Guid? CustomerId { get; set; }
        public Customer Customer { get; set; }

        public Guid? ServiceId { get; set; }
        public Service Service { get; set; }
    }
}
