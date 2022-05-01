using AutoMapper;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessQuery
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

            var result  = await _repository.GetByFirebaseUidAsync(request.FirebaseUid);

            if (result == null)
            {
                return response;
            }

            response.Business = _mapper.Map<BusinessVm>(result);

            return response;
        }
    }
}
