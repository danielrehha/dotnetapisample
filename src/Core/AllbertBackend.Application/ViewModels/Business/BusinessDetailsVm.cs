using System;

namespace AllbertBackend.Application.ViewModels.Business
{
    public class BusinessDetailsVm
    {
        public Guid BusinessId { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
    }
}