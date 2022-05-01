using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.DeleteWorkBlock
{
    public class DeleteWorkBlockCommandHandler : IRequestHandler<DeleteWorkBlockCommand,DeleteWorkBlockCommandResponse>
    {
        private readonly IEmployeeRepository _repository;

        public DeleteWorkBlockCommandHandler(IEmployeeRepository repository)
        {
            _repository = repository;
        }

        public async Task<DeleteWorkBlockCommandResponse> Handle(DeleteWorkBlockCommand request, CancellationToken cancellationToken)
        {
            var response = new DeleteWorkBlockCommandResponse();
            
            try
            {
                await _repository.DeleteWorkBlockAsync(request.EmployeeId, request.WorkBlockId);
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