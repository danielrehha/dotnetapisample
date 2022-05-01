using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Customer;
using MediatR;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerRating
{
    public class CreateCustomerReviewCommandHandler : IRequestHandler<CreateCustomerReviewCommand, CreateCustomerReviewCommandResponse>
    {
        private readonly ICustomerRepository _repository;

        public CreateCustomerReviewCommandHandler(ICustomerRepository repository)
        {
            _repository = repository;
        }

        public async Task<CreateCustomerReviewCommandResponse> Handle(CreateCustomerReviewCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateCustomerReviewCommandResponse();

            try
            {
                await _repository.CreateCustomerRatingAsync(request.CustomerReview);
            }
            catch (Exception e)
            {
                response.ErrorMessage = e.Message;
                response.Success = false;
            }
            
            return response;
        }
    }
}