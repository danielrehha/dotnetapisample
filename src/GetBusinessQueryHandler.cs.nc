using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Business.ViewModels;
using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessQueryHandler : IRequestHandler<GetBusinessQuery, GetBusinessQueryResponse>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        public GetBusinessQueryHandler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<GetBusinessQueryResponse> Handle(GetBusinessQuery request, CancellationToken cancellationToken)
        {
            var response = new GetBusinessQueryResponse();
            var validator = new GetBusinessQueryValidator(_repository);
            var validationResult = validator.Validate(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result  = await _repository.GetByFirebaseUidAsync(request.FirebaseUid);
            response.Business = _mapper.Map<BusinessVm>(result);
            return response;
        }
    }
}
