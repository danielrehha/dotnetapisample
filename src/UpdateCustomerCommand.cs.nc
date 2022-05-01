using AllbertBackend.Domain.Entities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Customer.Commands.UpdateCustomer
{
    public class UpdateCustomerCommand : IRequest<UpdateCustomerCommandResponse>
    {
        public UpdateCustomerCommand(Guid customerId, CustomerInfo customerInfo)
        {
            CustomerId = customerId;
            CustomerInfo = customerInfo;
        }
        public Guid CustomerId { get; }
        public CustomerInfo CustomerInfo { get; }
    }
}
