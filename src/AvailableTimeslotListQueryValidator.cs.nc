using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.AvailableTimeslotList
{
    public class AvailableTimeslotListQueryValidator : AbstractValidator<AvailableTimeslotListQuery>
    {
        private readonly IEmployeeRepository _repository;
        public AvailableTimeslotListQueryValidator(IEmployeeRepository repository)
        {
            _repository = repository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(AvailableTimeslotListQuery e, CancellationToken token)
        {
            return await _repository.DoesExistAsync(e.EmployeeId);
        }
    }
}
