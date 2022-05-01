using AllbertBackend.Application.Features.Employee.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features.Business.Queries.GetBusinessServiceList
{
    public class GetBusinessServiceListQueryResponse : BaseResponse
    {
        public List<ServiceVm> Services { get; set; }
    }
}
