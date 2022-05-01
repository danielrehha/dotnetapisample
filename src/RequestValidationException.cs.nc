using AllbertBackend.Domain.Common;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Exceptions
{
    public class RequestValidationException : BaseException
    {
        public override string Message { get { return (string)obj; } }
        public RequestValidationException(string message) : base(message)
        {
            Trace.TraceInformation($"A validation error occured while validating the request: '{message}'");
        }
    }
}
