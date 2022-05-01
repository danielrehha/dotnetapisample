using System;

namespace AllbertBackend.Application.Features.Business.Queries.GetEmployeeNameList
{
    public class EmployeeNameListDto
    {
        public Guid EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}