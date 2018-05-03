﻿using System;
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
            catch (Exception e)
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
            catch (Exception e)
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
            catch (Exception e)
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
            catch (Exception e)
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
            catch (Exception e)
            {
                return NotFound();
            }
            
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
                return Created("", value);
            }
            catch (Exception e)
            {
                return BadRequest();
            }
            
        }

        [HttpPost("InsertKategori")]
        public IActionResult Post([FromBody]Kategori value)
        {
            RepositoryKategori RP = new RepositoryKategori();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception e)
            {
                return BadRequest();
            }
            
        }

        [HttpPost("InsertSpesifikasi")]
        public IActionResult Post([FromBody]Spesifikasi value)
        {
            RepositorySpesifikasi RP = new RepositorySpesifikasi();

            try
            {
                RP.insertData(value);
                return Created("", value);
            }
            catch (Exception e)
            {
                return BadRequest();
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
