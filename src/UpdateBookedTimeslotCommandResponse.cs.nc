using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Employee.Commands.UpdateBookedTimeslot
{
    public class UpdateBookedTimeslotCommandResponse : BaseResponse
    {
        public AppointmentVm Timeslot { get; set; }
    }
}
