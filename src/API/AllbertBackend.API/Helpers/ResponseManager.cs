using AllbertBackend.Application.Features;
using Microsoft.AspNetCore.Mvc;

namespace AllbertBackend.API.Helpers
{
    public interface IResponseManager
    {
        ActionResult<T> MapActionResult<T>(T response) where T: BaseResponse;
    }
    public class ResponseManager : ControllerBase, IResponseManager
    {
        public ActionResult<T> MapActionResult<T>(T response) where T: BaseResponse
        {
            if(!response.Success)
            {
                return NotFound(response);
            }
            return Ok(response);
        }
    }
}
