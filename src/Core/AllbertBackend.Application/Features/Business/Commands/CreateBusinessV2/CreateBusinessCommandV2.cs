using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.CreateBusinessV2
{
    public class CreateBusinessCommandV2 : IRequest<CreateBusinessCommandV2Response>
    {
        public CreateBusinessCommandV2(string firebaseUid, string langIso639Code)
        {
            FirebaseUid = firebaseUid;
            LangIso639Code = langIso639Code;
        }

        public string FirebaseUid { get; }
        public string LangIso639Code { get; }
    }
}