using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AllbertBackend.Application.Features
{
    public static class ValidationResultResolver
    {
        public static ValidationResult Resolve<T>(this ValidationResult result, ref T response) where T: BaseResponse
        {
            if (result.Errors.Count > 0)
            {
                response.Success = false;
                foreach (var error in result.Errors)
                {
                    Trace.TraceInformation($"Validation error occured while validating request: [{nameof(T)}] - {error.ErrorMessage}");
                    response.ValidationErrors.Add(error.ErrorMessage);
                }
            }
            return result;
        }
    }
}
