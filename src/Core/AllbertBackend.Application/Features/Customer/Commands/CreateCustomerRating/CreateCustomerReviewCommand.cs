using AllbertBackend.Domain.Entities;
using MediatR;

namespace AllbertBackend.Application.Features.Customer.Commands.CreateCustomerRating
{
    public class CreateCustomerReviewCommand : IRequest<CreateCustomerReviewCommandResponse>
    {
        public CreateCustomerReviewCommand(CustomerReview customerReview)
        {
            CustomerReview = customerReview;
        }

        public CustomerReview CustomerReview { get; }
    }
}