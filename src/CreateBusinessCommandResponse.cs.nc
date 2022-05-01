using AllbertBackend.Application.Features.Business.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.CreateBusiness
{
    public class CreateBusinessCommandResponse : BaseResponse
    {
        public BusinessVm Business { get; set; }
    }
}
