using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.Features.Customer.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Commands.UpdateCustomer
{
    public class UpdateCustomerCommandHandler : IRequestHandler<UpdateCustomerCommand, UpdateCustomerCommandResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;
        public UpdateCustomerCommandHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<UpdateCustomerCommandResponse> Handle(UpdateCustomerCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateCustomerCommandResponse();
            var validator = new UpdateCustomerCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);
            validationResult.Resolve(ref response);
            if(!response.Success)
            {
                return response;
            }
            var result = await _repository.UpdateCustomerInfoAsync(request.CustomerId, request.CustomerInfo);
            response.CustomerInfo = _mapper.Map<CustomerInfoVm>(result);
            return response;
        }
    }
}
