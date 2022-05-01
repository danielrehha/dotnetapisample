using AllbertBackend.Application.ViewModels.Business;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateContact
{
    public class UpdateBusinessContactCommandResponse : BaseResponse
    {
        public BusinessContactVm Contact { get; set; }
    }
}