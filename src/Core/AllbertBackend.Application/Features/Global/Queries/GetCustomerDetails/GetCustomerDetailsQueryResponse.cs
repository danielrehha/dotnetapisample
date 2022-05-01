namespace AllbertBackend.Application.Features.Global.Queries.GetCustomerDetails
{
    public class GetCustomerDetailsQueryResponse : BaseResponse
    {
        public CustomerDetailsDto CustomerDetails { get; set; } = new CustomerDetailsDto();
    }
}