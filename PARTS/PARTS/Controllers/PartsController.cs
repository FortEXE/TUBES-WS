using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PARTS.Repository;

namespace PARTS.Controllers
{
    [Authorize]
    [Produces("application/json")]
    [Route("api/Parts")]
    public class PartsController : Controller
    {

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////    GET ALL    ////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        // GET: api/Parts/GetAllBarang
        [HttpGet("GetAllBarang")]
        public IActionResult GetBarang()
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                List<Barang> List = RP.getAll();
                return Ok(List);
            }
            catch (Exception)
            {
                return NotFound();
            }
            
        }

        // GET: api/Parts/GetAllSpesifikasi
        [HttpGet("GetAllSpesifikasi")]
        public IActionResult GetSpesifikasi()
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                List<Spesifikasi> List = RP.getAll();
                return Ok(List);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        // GET: api/Parts/GetAllKategori
        [HttpGet("GetAllKategori")]
        public IActionResult GetKategori()
        {
            RepositoryKategori RP = new RepositoryKategori();
            
            try
            {
                List<Kategori> List = RP.getAll();
                return Ok(List);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        // GET: api/Parts/GetAllDetailBarang
        [HttpGet("GetAllDetailBarang")]
        public IActionResult GetDetailBarang()
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();
            
            try
            {
                List<DetailBarang> List = RP.getAll();
                return Ok(List);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        ////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////  GET BY ID  /////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        // GET: api/Parts/5
        [HttpGet("GetPenggunaById/{id}", Name = "Get")]
        public IActionResult Get(String id)
        {
            RepositoryPengguna RP = new RepositoryPengguna();

            try
            {
                var hasil = RP.getByID(id);
                return Ok(hasil);
            }
            catch (Exception)
            {
                return NotFound();
            }
            
        }

        [HttpGet("GetBarangById/{id}", Name = "GetBarangById")]
        public IActionResult GetBarangById(String id)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                var hasil = RP.getByID(id);
                return Ok(hasil);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        [HttpGet("GetSpesifikasiById/{id}", Name = "GetSpesifikasiById")]
        public IActionResult GetSpesifikasiById(String id)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                var hasil = RP.getByID(id);
                return Ok(hasil);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        [HttpGet("GetDetailBarangById/{id}", Name = "GetDetailBarangById")]
        public IActionResult GetDetailBarangById(String id)
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();

            try
            {
                List<DetailBarang> List = RP.getByID(id);
                return Ok(List);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }
        //

        ////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////  GET BY (OTHERS)  ///////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        [HttpGet("GetBarangByKategori/{idKategori}", Name = "GetBarangByKategori")]
        public IActionResult GetBarangByKategori(String idKategori)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                var hasil = RP.getBarangByKategori(idKategori);
                return Ok(hasil);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        [HttpGet("GetBarangByMerk/{merk}", Name = "GetBarangByMerk")]
        public IActionResult GetBarangByMerk(String merk)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                var hasil = RP.getBarangByMerk(merk);
                return Ok(hasil);
            }
            catch (Exception)
            {
                return NotFound();
            }

        }

        ///////////////////////////////////////////////////////////////
        ///////////////////////////// POST ////////////////////////////
        ///////////////////////////////////////////////////////////////

        // POST: api/Parts
        [HttpPost("InsertBarang")]
        public IActionResult PostBarang([FromBody]Barang value)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception)
            {
                return BadRequest();
            }
            
        }

        [HttpPost("InsertKategori")]
        public IActionResult PostKategori([FromBody]Kategori value)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception)
            {
                return BadRequest();
            }
            
        }

        [HttpPost("InsertSpesifikasi")]
        public IActionResult PostSpesifikasi([FromBody]Spesifikasi value)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception e)
            {
                return BadRequest(value);
            }
            
        }

        [HttpPost("InsertDetailBarang")]
        public IActionResult PostDetailBarang([FromBody]DetailBarang value)
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception e)
            {
                return BadRequest(value);
            }

        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////// PUT //////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        // PUT: api/Parts/5
        [HttpPut("UpdateBarang/{id}")]
        public IActionResult PutBarang(String id, [FromBody]Barang value)
        {
            RepositoryBarang RP = new RepositoryBarang();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        [HttpPut("UpdateKategori/{id}")]
        public IActionResult PutKategori(String id, [FromBody]Kategori value)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        [HttpPut("UpdateSpesifikasi/{id}")]
        public IActionResult PutSpesifikasi(int id, [FromBody]Spesifikasi value)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        [HttpPut("UpdateDetailBarang/{id}")]
        public IActionResult PutDetailBarang(string id, [FromBody]DetailBarang value)
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();

            try
            {
                RP.updateData(id, value);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////// DELETE ///////////////////////////////////////////////////
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
            catch (Exception)
            {
                return BadRequest();
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
            catch (Exception)
            {
                return BadRequest();
            }
        }

        [HttpDelete("DeleteSpesifikasi/{id}")]
        public IActionResult DeleteSpec(string id)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.deleteData(id);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        [HttpDelete("DeleteDetailBarang/{id}")]
        public IActionResult DeleteDetailBarang(string id)
        {
            RepositoryDetailBarang RP = new RepositoryDetailBarang();

            try
            {
                RP.deleteData(id);
                return Ok();
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
    }
}
