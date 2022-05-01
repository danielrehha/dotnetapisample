using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.CreateServiceCommand
{
    public class CreateServiceCommandResponse : BaseResponse
    {
        public ServiceVm Service { get; set; }
    }
}
