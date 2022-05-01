using System;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerAppointmentVm
    {
        public Guid Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int Status { get; set; } /// 0 = Ongoing; 1 = Completed; 2 = Deleted (Customer didn't show up)

        public Guid EmployeeId { get; set; }
        public CustomerEmployeeVm Employee { get; set; }

        public ServiceVm Service { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
