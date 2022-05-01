using MediatR;
using System;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessQuery : IRequest<GetBusinessQueryResponse>
    {
        public string FirebaseUid { get; }
        public GetBusinessQuery(string firebaseUid)
        {
            FirebaseUid = firebaseUid;
        }
    }
}
