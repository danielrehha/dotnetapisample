using AllbertBackend.Domain.Entities;
using AllbertBackend.Domain.Entities.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Dtos
{
    public class EmployeeScheduleUpdateDto
    {
        public EmployeeScheduleSettings EmployeeScheduleSettings { get; set; }
        public List<WorkDay> WorkDayList { get; set; }
    }
}
