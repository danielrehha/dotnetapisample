using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Helpers;
using AllbertBackend.Application.ViewModels;
using AutoMapper;
using MediatR;

namespace AllbertBackend.Application.Features.Employee.Queries.GetCustomerReviewList
{
    public class
        GetCustomerReviewListQueryHandler : IRequestHandler<GetCustomerReviewListQuery,
            GetCustomerReviewListQueryResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public GetCustomerReviewListQueryHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<GetCustomerReviewListQueryResponse> Handle(GetCustomerReviewListQuery request,
            CancellationToken cancellationToken)
        {
            var response = new GetCustomerReviewListQueryResponse();

            try
            {
                var result = await _repository.GetCustomerReviewListAsync(request.EmployeeId, request.Parameters);

                var customerReviewVmList = new PagedList<CustomerReviewVm>();

                foreach (var review in result)
                {
                    customerReviewVmList.Add(_mapper.Map<CustomerReviewVm>(review));
                }

                response.CustomerReviews = _mapper.Map<PagedList<CustomerReviewVm>>(result);
                response.CustomerReviews.Clear();
                response.CustomerReviews.AddRange(customerReviewVmList);
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