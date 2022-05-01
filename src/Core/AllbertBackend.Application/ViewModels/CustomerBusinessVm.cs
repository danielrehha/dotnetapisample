using System;
using AllbertBackend.Application.ViewModels.Business;

namespace AllbertBackend.Application.ViewModels
{
    public class CustomerBusinessVm
    {
        public Guid Id { get; set; }
        public BusinessDetailsVm Details { get; set; }
        public BusinessAddressVm Address { get; set; }
        public BusinessContactVm Contact { get; set; }
        public ApplicationImageVm Avatar { get; set; }
    }
}
