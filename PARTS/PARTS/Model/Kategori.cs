using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Controllers
{
    public class Kategori
    {
        private string _id_kategori;
        private string _nama_kategori;

        Kategori() { }

        public string Id_kategori { get => _id_kategori; set => _id_kategori = value; }
        public string Nama_kategori { get => _nama_kategori; set => _nama_kategori = value; }
    }
}
