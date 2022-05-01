using System;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerDetailsVm
    {
        public Guid Id { get; set; }
        public string FirebaseUid { get; set; }
        public CustomerInfoVm CustomerInfo { get; set; }
        public ApplicationImageVm Avatar { get; set; }
        public DateTime CreatedOn { get; set; }
    }
}
