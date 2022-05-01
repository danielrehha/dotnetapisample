using FluentValidation.Results;
using System.Diagnostics;

namespace AllbertBackend.Application.Features.ResultResolver
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
