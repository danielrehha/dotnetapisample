using AllbertBackend.Application.Features.Employee.ViewModels;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateBookedTimeslot
{
    public class CreateBookedTimeslotCommandResponse : BaseResponse
    {
        public AppointmentVm Timeslot { get; set; }
    }
}
