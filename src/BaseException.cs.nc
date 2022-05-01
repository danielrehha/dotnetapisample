using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Domain.Common
{
    public class BaseException : Exception
    {
        public object obj { get; }
        public BaseException(object obj)
        {
            this.obj = obj;
        }
    }
}
