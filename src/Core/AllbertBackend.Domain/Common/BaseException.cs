using System;

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
