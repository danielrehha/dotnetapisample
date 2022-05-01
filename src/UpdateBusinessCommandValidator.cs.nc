using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateBusiness
{
    public class UpdateBusinessCommandValidator : AbstractValidator<UpdateBusinessCommand>
    {
        private readonly IBusinessRepository _repository;
        public UpdateBusinessCommandValidator(IBusinessRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).NotNull().WithMessage("No BusinessInfo model was provided in the request.");
            RuleFor(e => e).MustAsync(DoesBusinessExist)
                .WithMessage("The specified business could not be found.");
        }
        private async Task<bool> DoesBusinessExist(UpdateBusinessCommand e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessInfo.BusinessId);
        }
    }
}
