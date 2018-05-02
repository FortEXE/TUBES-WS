using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace PARTS.Controllers
{
    [Route("api/Auth")]
    public class AuthController : Controller
    {
        // POST: api/Auth
        [HttpPost ("token")]
        public IActionResult Token()
        {
            String tokenString = "test";

            return Ok(tokenString);
        }
    }
}
