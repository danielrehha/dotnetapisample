using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Employee.Commands.CreateAvailableTimeslot
{
    public class CreateAvailableTimeslotCommandResponse : BaseResponse
    {
        public AvailableTimeslotVm Timeslot { get; set; }
    }
}
