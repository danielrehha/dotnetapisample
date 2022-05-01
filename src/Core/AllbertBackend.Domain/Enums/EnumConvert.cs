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
            if (value == "service")
            {
                return EntityType.Service;
            }
            return EntityType.Customer;
        }

        public static EntityStatus GetEntityStatus(this string value)
        {
            if (value == "active")
            {
                return EntityStatus.Active;
            }
            return EntityStatus.Paused;
        }
    }
}
