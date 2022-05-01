using MediatR;

namespace AllbertBackend.Application.Features.Customer.Queries.GetCustomerQuery
{
    public class GetCustomerQuery : IRequest<GetCustomerQueryResponse>
    {
        public string FirebaseUid { get; }

        public GetCustomerQuery(string firebaseUid)
        {
            FirebaseUid = firebaseUid;
        }
    }
}
