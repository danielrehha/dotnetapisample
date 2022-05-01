using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.CreateBusinessV2
{
    public class CreateBusinessCommandV2Response : BaseResponse
    {
        public BusinessVm Business { get; set; }
    }
}