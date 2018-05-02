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
        // GET: api/Parts/GetAllBarang
        [HttpGet("GetAllBarang")]
        public IActionResult GetBarang()
        {
            RepositoryBarang RP = new RepositoryBarang();
            List<Barang> ListParts = RP.getAll();

            
            return Ok(ListParts);
        }

        // GET: api/Parts/GetAllSpesifikasi
        [HttpGet("GetAllSpesifikasi")]
        public IActionResult GetSpesifikasi()
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();
            List<Spesifikasi> ListParts = RP.getAll();

            return Ok(ListParts);
        }

        // GET: api/Parts/GetAllKategori
        [HttpGet("GetAllKategori")]
        public IActionResult GetKategori()
        {
            RepositoryKategori RP = new RepositoryKategori();
            List<Kategori> ListParts = RP.getAll();

            return Ok(ListParts);
        }

        // GET: api/Parts/GetAllDetailBarang
        [HttpGet("GetAllDetailBarang")]
        public IActionResult GetDetailBarang()
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();
            List<DetailBarang> ListParts = RP.getAll();

            return Ok(ListParts);
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        // GET: api/Parts/5
        [HttpGet("GetById/{id}", Name = "Get")]
        public int Get(int id)
        {

            return 0;
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        
        // POST: api/Parts
        [HttpPost("InsertBarang")]
        public IActionResult Post([FromBody]Barang value)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                RP.insertData(value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpPost("InsertKategori")]
        public IActionResult Post([FromBody]Kategori value)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.insertData(value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpPost("InsertSpesifikasi")]
        public IActionResult Post([FromBody]Spesifikasi value)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.insertData(value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        
        // PUT: api/Parts/5
        [HttpPut("UpdateBarang/{id}")]
        public IActionResult Put(String id, [FromBody]Barang value)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpPut("UpdateKategori/{id}")]
        public IActionResult Put(String id, [FromBody]Kategori value)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpPut("UpdateSpesifikasi/{id}")]
        public IActionResult Put(int id, [FromBody]Spesifikasi value)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        
        // DELETE: api/parts/5
        [HttpDelete("DeleteBarang/{id}")]
        public IActionResult DeleteBarang(String id)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                RP.deleteData(id);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpDelete("DeleteKategori/{id}")]
        public IActionResult DeleteKategori(String id)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.deleteData(id);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

        [HttpDelete("DeleteSpesifikasi/{id}")]
        public IActionResult DeleteSpec(int id)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.deleteData(id);
                return Ok();
            }
            catch (Exception e)
            {
                return NotFound();
            }
        }

    }
}
