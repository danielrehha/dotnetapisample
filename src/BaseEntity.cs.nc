using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Entities.Shared
{
    public class BaseEntity
    {
        public DateTime? CreatedOn { get; set; }
        public DateTime? ModifiedOn { get; set; }
        protected BaseEntity()
        {
            CreatedOn = DateTime.UtcNow;
        }
    }
}
