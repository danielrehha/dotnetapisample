using AllbertBackend.Domain.Entities;
using MediatR;
namespace AllbertBackend.Application.Features.Business.Commands.CreateBusiness
{
    public class CreateBusinessCommand : IRequest<CreateBusinessCommandResponse>
    {
        public string FirebaseUid { get; set; }
        public BusinessInfo BusinessInfo { get; set; }
        public CreateBusinessCommand(string firebaseUid, BusinessInfo businessInfo)
        {
            FirebaseUid = firebaseUid;
            BusinessInfo = businessInfo;
        }
    }
}
