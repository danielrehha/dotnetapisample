using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeList
{
    public class GetEmployeeListQueryValidator : AbstractValidator<GetEmployeeListQuery>
    {
        private readonly IBusinessRepository _repository;
        public GetEmployeeListQueryValidator(IBusinessRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesBusinessExistAsync).WithMessage("The specified business does not exist.");
        }
        private async Task<bool> DoesBusinessExistAsync(GetEmployeeListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.BusinessId);
        }
    }
}
