using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries
{
    public class GetBusinessQueryValidator : AbstractValidator<GetBusinessQuery>
    {
        private readonly IBusinessRepository _repository;
        public GetBusinessQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesBusinessExist).WithMessage("The specified business does not exist.");
        }
        private async Task<bool> DoesBusinessExist(GetBusinessQuery e, CancellationToken token)
        {
            return await _repository.DoesBusinessExistByFirebaseUidAsync(e.FirebaseUid);
        }
    }
}
