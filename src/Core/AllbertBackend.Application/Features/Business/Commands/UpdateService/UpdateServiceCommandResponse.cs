using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateServiceCommand
{
    public class UpdateServiceCommandResponse : BaseResponse
    {
        public ServiceVm Service { get; set; }
    }
}
