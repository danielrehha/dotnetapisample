using MediatR;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessQuery
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
