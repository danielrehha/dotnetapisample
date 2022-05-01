using AllbertBackend.Application.Contracts.Persistence;
using MediatR;
using System;
using System.Collections.Generic;
using AllbertBackend.Domain.Entities;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using AllbertBackend.Application.Features.Business.ViewModels;
using AllbertBackend.Application.Contracts.Geocoding;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessListQueryHandler : IRequestHandler<GetBusinessListQuery, IReadOnlyList<BusinessVm>>
    {
        private readonly IAsyncRepository<Domain.Entities.Business> _repository;
        private readonly IMapper _mapper;
        public GetBusinessListQueryHandler(IMapper mapper, IAsyncRepository<Domain.Entities.Business> repository)
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
