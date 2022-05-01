using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessQuery
{
    public class GetBusinessQueryResponse : BaseResponse
    {
        public BusinessVm Business { get; set; }
    }
}
