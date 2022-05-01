using AllbertBackend.Application.Contracts.Persistence;
using AllbertBackend.Application.ViewModels;
using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateSchedule
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
            try
            {
                var result = await _repository.UpdateScheduleSettingsAsync(request.EmployeeId, request.ScheduleUpdateDto.EmployeeScheduleSettings);
                response.ScheduleSettings = _mapper.Map<EmployeeScheduleSettingsVm>(result);
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
