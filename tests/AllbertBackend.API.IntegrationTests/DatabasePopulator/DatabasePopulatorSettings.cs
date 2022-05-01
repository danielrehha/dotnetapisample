using System;
using System.Collections.Generic;

namespace AllbertBackend.API.IntegrationTests.DatabasePopulator
{
    public static class DatabasePopulatorSettings
    {
        public static int EmployeeCount = 10;
        public static int ServiceCount = 10;
        public static int AppointmentCount = 10000;
        public static int CustomerCount = 300;

        public static List<Guid> EmployeeIds = new List<Guid>();
        public static List<Guid> ServiceIds = new List<Guid>();
        public static List<Guid> CustomerIds = new List<Guid>();
        public static List<Guid> AppointmentIds = new List<Guid>();
    }
}