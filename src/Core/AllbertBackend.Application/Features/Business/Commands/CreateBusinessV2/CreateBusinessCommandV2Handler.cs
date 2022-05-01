using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Entities;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Commands.CreateBusinessV2
{
    public class CreateBusinessCommandV2Handler : IRequestHandler<CreateBusinessCommandV2,CreateBusinessCommandV2Response>
    {
        private readonly IBusinessRepository _repository;
        private readonly IMapper _mapper;

        public CreateBusinessCommandV2Handler(IBusinessRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<CreateBusinessCommandV2Response> Handle(CreateBusinessCommandV2 request, CancellationToken cancellationToken)
        {
            var response = new CreateBusinessCommandV2Response();

            try
            {
                var businessId = Guid.NewGuid();
                var result = await _repository.AddAsync(new Domain.Entities.Business()
                {
                    Id = businessId,
                    FirebaseUid = request.FirebaseUid,
                    BusinessSettings = BusinessSettings.GetDefault(businessId,request.LangIso639Code),
                    SubscriptionInfo = SubscriptionInfo.getDefault(businessId,0),
                });
                var business = await _repository.GetByFirebaseUidAsync(request.FirebaseUid);
                response.Business = _mapper.Map<BusinessVm>(business);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
            }

            return response;
        }
    }
}