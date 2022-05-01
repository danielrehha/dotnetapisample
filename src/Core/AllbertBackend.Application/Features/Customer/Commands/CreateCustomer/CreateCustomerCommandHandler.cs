using AutoMapper;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using AllbertBackend.Application.ViewModels;
using AllbertBackend.Application.Features.ResultResolver;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerCommand
{
    public class CreateCustomerCommandHandler : IRequestHandler<CreateCustomerCommand, CreateCustomerCommandResponse>
    {
        private readonly ICustomerRepository _repository;
        private readonly IMapper _mapper;

        public CreateCustomerCommandHandler(ICustomerRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        public async Task<CreateCustomerCommandResponse> Handle(CreateCustomerCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateCustomerCommandResponse();

            var validator = new CreateCustomerCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            var customer = new AllbertBackend.Domain.Entities.Customer
            {
                Id = request.CustomerInfo.CustomerId,
                FirebaseUid = request.FirebaseUid,
                CustomerInfo = request.CustomerInfo,
                CreatedOn = DateTime.UtcNow,
                Deleted = false
            };

            var result = await _repository.AddAsync(customer);

            response.Customer = _mapper.Map<CustomerVm>(result);

            return response;
        }
    }
}
