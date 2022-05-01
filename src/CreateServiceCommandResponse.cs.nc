using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateService
{
    public class CreateServiceCommandResponse : BaseResponse
    {
        public ServiceVm Service { get; set; }
    }
}
