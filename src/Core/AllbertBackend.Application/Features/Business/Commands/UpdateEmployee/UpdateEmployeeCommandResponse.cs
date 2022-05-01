using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.UpdateEmployeeCommand
{
    public class UpdateEmployeeCommandResponse : BaseResponse
    {
        public EmployeeInfoVm EmployeeInfo { get; set; }
    }
}
