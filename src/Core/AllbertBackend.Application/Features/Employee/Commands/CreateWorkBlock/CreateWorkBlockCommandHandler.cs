using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.CreateWorkBlock
{
    public class CreateWorkBlockCommandHandler : IRequestHandler<CreateWorkBlockCommand, CreateWorkBlockCommandResponse>
    {
        private readonly IEmployeeRepository _repository;

        public CreateWorkBlockCommandHandler(IEmployeeRepository repository)
        {
            _repository = repository;
        }

        public async Task<CreateWorkBlockCommandResponse> Handle(CreateWorkBlockCommand request, CancellationToken cancellationToken)
        {
            var response = new CreateWorkBlockCommandResponse();

            try
            {
                await _repository.CreateWorkBlockAsync(request.EmployeeId, request.WorkBlock);
            }
            catch (Exception e)
            {
                response.Success = false;
                response.ErrorMessage = e.Message;
                response.HadErrors = true;
            }

            return response;
        }
    }
}