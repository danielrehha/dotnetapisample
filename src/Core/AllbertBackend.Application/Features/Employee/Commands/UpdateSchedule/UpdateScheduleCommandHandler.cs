using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AllbertBackend.Application.Contracts.Persistence.Employee;
using AllbertBackend.Application.Features.ResultResolver;
using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateScheduleCommand
{
    public class UpdateScheduleCommandHandler : IRequestHandler<UpdateScheduleCommand, UpdateScheduleCommandResponse>
    {
        private readonly IEmployeeRepository _repository;
        private readonly IMapper _mapper;

        public UpdateScheduleCommandHandler(IEmployeeRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public async Task<UpdateScheduleCommandResponse> Handle(UpdateScheduleCommand request, CancellationToken cancellationToken)
        {
            var response = new UpdateScheduleCommandResponse();

            var validator = new UpdateScheduleCommandValidator(_repository);
            var validationResult = await validator.ValidateAsync(request);

            validationResult.Resolve(ref response);

            if(!response.Success)
            {
                return response;
            }

            try
            {
                var result = await _repository.UpdateScheduleAsync(request.EmployeeId, request.ScheduleUpdateDto.WorkDayList);
                response.WorkDayList = _mapper.Map<List<WorkDayVm>>(result);
            } catch (Exception e)
            {
                response.Success = false;
                response.HadErrors = true;
                response.ErrorMessage = e.Message;
            }

            return response;
        }
    }
}
