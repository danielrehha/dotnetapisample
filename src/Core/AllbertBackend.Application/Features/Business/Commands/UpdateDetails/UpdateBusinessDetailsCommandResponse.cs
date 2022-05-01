using AllbertBackend.Application.ViewModels.Business;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateDetails
{
    public class UpdateBusinessDetailsCommandResponse : BaseResponse
    {
        public BusinessDetailsVm Details { get; set; }
    }
}