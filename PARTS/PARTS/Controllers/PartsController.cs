using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace PARTS.Controllers
{
    [Produces("application/json")]
    [Route("api/Parts")]
    public class PartsController : Controller
    {
        // GET: api/Parts/GetAll
        [HttpGet("GetAll")]
        public IEnumerable<Parts> Get()
        {
            RepositoryParts RP = new RepositoryParts();
            List<Parts> ListParts = RP.getAll();

            return ListParts;
        }

        // GET: api/Parts/5
        [HttpGet("GetById/{id}", Name = "Get")]
        public int Get(int id)
        {

            return 0;
        }
        
        // POST: api/Parts
        [HttpPost("Insert")]
        public string Post([FromBody]Parts value)
        {
            RepositoryParts RP = new RepositoryParts();

            try
            {
                
                return "0K";
            }
            catch (Exception e)
            {
                return "GAGAL";
            }
        }
        
        // PUT: api/Parts/5
        [HttpPut("Update/{id}")]
        public string Put(int id, [FromBody]Parts value)
        {
            RepositoryParts RP = new RepositoryParts();

            try
            {
                
                return "0K";
            }
            catch (Exception e)
            {
                return "GAGAL";
            }
        }
        
        // DELETE: api/parts/5
        [HttpDelete("Delete/{id}")]
        public string Delete(int id)
        {
            RepositoryParts RP = new RepositoryParts();

            try
            {
                
                return "0K";
            }
            catch (Exception e)
            {
                return "GAGAL";
            }
        }
    }
}
