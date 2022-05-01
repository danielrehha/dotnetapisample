using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Global.Commands.UploadImageCommand
{
    public class UploadImageCommandResponse : BaseResponse
    {
        public ApplicationImageVm Image { get; set; }
    }
}