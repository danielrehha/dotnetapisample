using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AllbertBackend.IntegrationTests.Core
{
    public static class TestContext
    {
        public static bool IsInitialized = false;
        public static bool UseDirectDbConnection = true;

        public static Guid? BusinessId = null;
    }
}
