using AllbertBackend.Application.ViewModels;
using AllbertBackend.Domain.Entities;

namespace AllbertBackend.Application.Features.Employee.Commands.UpdateEmployeeSettings
{
    public class UpdateEmployeeSettingsCommandResponse : BaseResponse
    {
        public EmployeeSettingsVm Settings { get; set; }
    }
}