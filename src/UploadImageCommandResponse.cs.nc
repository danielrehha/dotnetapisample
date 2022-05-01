using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Global.Commands.UploadImage
{
    public class UploadImageCommandResponse : BaseResponse
    {
        public ApplicationImageVm Image { get; set; }
    }
}
