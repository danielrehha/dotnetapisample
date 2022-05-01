using AllbertBackend.Application.Contracts.Persistence;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.DeleteEmployee
{
    public class DeleteEmployeeCommandValidator : AbstractValidator<DeleteEmployeeCommand>
    {
        private readonly IEmployeeRepository _employeeRepository;
        private readonly IBusinessRepository _businessRepository;
        public DeleteEmployeeCommandValidator(IEmployeeRepository employeeRepository, IBusinessRepository businessRepository)
        {
            _employeeRepository = employeeRepository;
            _businessRepository = businessRepository;
            RuleFor(e => e).MustAsync(DoesEmployeeExistAsync).WithMessage("The specified employee does not exist.");
        }
        private async Task<bool> DoesEmployeeExistAsync(DeleteEmployeeCommand e, CancellationToken token)
        {
            return await _employeeRepository.DoesExistAsync(e.EmployeeId);
        }
    }
}
