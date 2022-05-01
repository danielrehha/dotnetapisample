using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Domain.Entities;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessInfo
{
    public class GetBusinessInfoQueryHandler : IRequestHandler<GetBusinessInfoQuery, BusinessInfoVm>
    {
        private readonly IAsyncRepository<BusinessInfo> _repository;
        private readonly IMapper _mapper;
        public GetBusinessInfoQueryHandler(IAsyncRepository<BusinessInfo> repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<BusinessInfoVm> Handle(GetBusinessInfoQuery request, CancellationToken cancellationToken)
        {
            var result = await _repository.GetByIdAsync(request.Id);
            var businessInfo = _mapper.Map<BusinessInfo, BusinessInfoVm>(result);
            return businessInfo;
        }
    }
}
