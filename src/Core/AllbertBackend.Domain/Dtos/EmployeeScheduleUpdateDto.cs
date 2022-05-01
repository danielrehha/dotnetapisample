using System.Collections.Generic;
using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;

namespace AllbertBackend.Domain.Dtos
{
    public class EmployeeScheduleUpdateDto
    {
        public List<WorkDay> WorkDayList { get; set; }
    }
}
