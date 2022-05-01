using System;

namespace AllbertBackend.Application.ViewModels.Business
{
    public class BusinessContactVm
    {
        public Guid BusinessId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string PhoneIso { get; set; }
        public string Email { get; set; }
    }
}