using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using PARTS.Model;
using PARTS.Repository;

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
                var usernameAndPassEnc = Encoding.UTF8.GetString(Convert.FromBase64String(credValue));
                var usernameAndPass = usernameAndPassEnc.Split(":");


                //Check in DB if username and Password exist
                RepositoryPengguna RP = new RepositoryPengguna();
                Pengguna user = RP.getByUserName(usernameAndPass[0]);
                MD5 md5hash = MD5.Create();
                if (user != null && user.GetMd5Hash(md5hash, usernameAndPass[1]) == user.Password)
                {
                    var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("SecretKey!@#12364488993_====++++"));
                    var signInCred = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);
                    var ClaimsData = new[] { new Claim(ClaimTypes.Name, user.Username) };
                    var token = new JwtSecurityToken(
                        issuer: "computercorner.com",
                        audience: "computercorner.com",
                        expires: DateTime.Now.AddMinutes(60),
                        claims: ClaimsData,
                        signingCredentials: signInCred
                        );

                    var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
                    return Ok(tokenString);

                }
            }
            return BadRequest("Wrong Credentials");
        }
    }
}
