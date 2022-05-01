using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Enums
{
    public enum SearchDateType {
        NotRelevant,
        Date,
        DateWithTimeRange,
    }
    public enum SearchLocationType
    {
        Static,
        DeviceLocation
    }
}
