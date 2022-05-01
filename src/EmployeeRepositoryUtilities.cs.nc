using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Persistence.Repositories.Utils
{
    public static class EmployeeRepositoryUtilities
    {
        public static bool IsToday(DateTime date)
        {
            var today = DateTime.UtcNow;
            if(date.Year == today.Year && date.Month == today.Month && date.Day == today.Day)
            {
                return true;
            }
            return false;
        }
    }
}
