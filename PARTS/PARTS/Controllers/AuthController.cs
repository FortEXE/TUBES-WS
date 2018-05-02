using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;

namespace PARTS.Controllers
{
    [Route("api/Auth")]
    public class AuthController : Controller
    {
        // POST: api/Auth
        [HttpPost ("token")]
        public IActionResult Token()
        {
            var headers = Request.Headers["Authorization"];
            if (headers.ToString().StartsWith("Basic"))
            {
                var credValue = headers.ToString().Substring("Basic".Length).Trim();

                var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("SecretKey!@#12364488993_====++++"));
                var signInCred = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);
                var ClaimsData = new[] { new Claim(ClaimTypes.Name, "username") };
                var token = new JwtSecurityToken(
                    issuer: "computercorner.com",
                    audience: "computercorner.com",
                    expires: DateTime.Now.AddMinutes(1),
                    claims: ClaimsData,
                    signingCredentials: signInCred
                    );

                var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
                return Ok(tokenString);
            }
            return BadRequest("Wrong Token");
        }
    }
}
