using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateAvailableTimeslot
{
    public class UpdateAvailableTimeslotCommandResponse : BaseResponse
    {
        public AvailableTimeslotVm Timeslot { get; set; }
    }
}
