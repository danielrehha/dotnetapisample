using AllbertBackend.Application.ViewModels.Business;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateAddress
{
    public class UpdateBusinessAddressCommandResponse : BaseResponse
    {
        public BusinessAddressVm Address { get; set; }
    }
}