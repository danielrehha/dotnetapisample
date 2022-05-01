using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Commands.UpdateBusiness
{
    public class UpdateBusinessCommandResponse : BaseResponse
    {
        public BusinessInfoVm BusinessInfo { get; set; }
    }
}
