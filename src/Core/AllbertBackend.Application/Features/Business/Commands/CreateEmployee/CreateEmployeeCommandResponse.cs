using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Business.Commands.CreateEmployeeCommand
{
    public class CreateEmployeeCommandResponse : BaseResponse
    {
        public EmployeeVm Employee { get; set; }
    }
}
