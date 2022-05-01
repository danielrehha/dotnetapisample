using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace AllbertBackend.Application.Features.Global.Commands.UpdateAppointmentStatus.API.Controllers
{
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("api/[controller]")]
    public class LocationController : ControllerBase
    {
        [Route("countries")]
        public async Task<ActionResult<object>> LoadCountryListAsync()
        {
            try
            {
                var path = Path.Combine(Directory.GetCurrentDirectory(), "Location/Countries.json");
                string fileContent = await System.IO.File.ReadAllTextAsync(path);

                return fileContent;
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        [Route("cities")]
        public async Task<ActionResult<object>> GetCityListAsync(string queryString = "", string countryCode = "hu")
        {
            try
            {
                var path = Path.Combine(Directory.GetCurrentDirectory(), $"Location/Cities/{countryCode.ToLower()}.txt");
                string[] lines = await System.IO.File.ReadAllLinesAsync(path);
                var cities = new List<string>();

                if (queryString.Length > 0)
                {
                    lines = lines.Where(e => e.Split("\t")[1].ToLower().Contains(queryString.ToLower())).ToArray();
                }
                
                foreach (var line in lines)
                {
                    var city = line.Split("\t")[1];
                    if (!cities.Contains(city))
                    {
                        cities.Add(city);
                    }
                }

                cities = cities.Take(10).ToList();

                return cities;
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
    }
}