using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Queries.EmployeeSchedule
{
    public class EmployeeScheduleQueryValidator : AbstractValidator<EmployeeScheduleQuery>
    {
        private readonly IEmployeeRepository _employeeRepository;
        public EmployeeScheduleQueryValidator(IEmployeeRepository employeeRepository)
        {
            _employeeRepository = employeeRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(EmployeeScheduleQuery e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
    }
}
