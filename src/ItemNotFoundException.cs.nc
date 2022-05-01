using AllbertBackend.Domain.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Exceptions
{
    public class ItemNotFoundException : BaseException
    {
        public string Name { get; }
        public override string Message { get; }
        public ItemNotFoundException(string name) : base(name)
        {
            Name = name;
            Message = $"The specified {Name} could not be found";
        }
    }
}
