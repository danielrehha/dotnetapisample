using System;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Business;
using MediatR;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList
{
    public class GetEmployeeNameListQueryHandler : IRequestHandler<GetEmployeeNameListQuery,GetEmployeeNameListQueryResponse>
    {
        private readonly IBusinessRepository _repository;

        public GetEmployeeNameListQueryHandler(IBusinessRepository repository)
        {
            _repository = repository;
        }

        public async Task<GetEmployeeNameListQueryResponse> Handle(GetEmployeeNameListQuery request, CancellationToken cancellationToken)
        {
            var response = new GetEmployeeNameListQueryResponse();

            try
            {
                response.Employees = await _repository.GetEmployeeNameListAsync(request.BusinessId);
            }
            catch (Exception e)
            {
                response.ErrorMessage = e.Message;
                response.Success = false;
            }
            
            return response;
        }
    }
}