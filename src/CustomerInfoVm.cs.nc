using System;
namespace AllbertBackend.Application.Features.Customer.ViewModels
{
    public class CustomerInfoVm
    {
        public Guid CustomerId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string PhoneIso { get; set; }
        public DateTime ModifiedOn { get; set; }
    }
}
