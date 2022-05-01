using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateWorkBlock
{
    public class UpdateWorkBlockCommandHandler : IRequestHandler<UpdateWorkBlockCommand, UpdateWorkBlockCommandResponse>
    {
        private readonly IEmployeeRepository _repository;

        public UpdateWorkBlockCommandHandler(IEmployeeRepository repository)
        {
            _repository = repository;
        }

        public async Task<UpdateWorkBlockCommandResponse> Handle(UpdateWorkBlockCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateWorkBlockCommandResponse();

            try
            {
                await _repository.UpdateWorkBlockAsync(request.EmployeeId, request.WorkBlock);
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