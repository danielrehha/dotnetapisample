using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels;
using AutoMapper;

namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessListQuery
{
    public class GetBusinessListQueryHandler : IRequestHandler<GetBusinessListQuery, IReadOnlyList<BusinessVm>>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;
        public GetBusinessListQueryHandler(IMapper mapper, IBusinessRepository repository)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<IReadOnlyList<BusinessVm>> Handle(GetBusinessListQuery request, CancellationToken cancellationToken)
        {
            var result = await _repository.GetAllAsync();
            var @list = _mapper.Map<IReadOnlyList<BusinessVm>>(result);

            return list;
        }
    }
}
