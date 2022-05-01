using AllbertBackend.Application.ViewModels;

namespace AllbertBackend.Application.Features.Employee.Queries.GetEmployeeSettings
{
    public class EmployeeSettingsQueryResponse : BaseResponse
    {
        public EmployeeSettingsVm Settings { get; set; }
    }
}