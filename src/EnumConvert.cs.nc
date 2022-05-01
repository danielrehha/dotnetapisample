using AllbertBackend.Application.Contracts.SessionManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Enums
{
    public static class EnumConvert
    {
        public static SessionType GetSessionType(this string value)
        {
            if(value == "web")
            {
                return SessionType.Web;
            }
            return SessionType.Mobile;
        }
        public static EntityType GetEntityType(this string value)
        {
            if(value == "employee")
            {
                return EntityType.Employee;
            }
            if(value == "business")
            {
                return EntityType.Business;
            }
            return EntityType.Customer;
        }
    }
}
