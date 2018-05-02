using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Controllers
{
    public class Spesifikasi
    {
        private int _id_spesifikasi;
        private string _xid_barang;
        private string _rincian_spesifikasi;

        Spesifikasi() { }

        public int Id_spesifikasi { get => _id_spesifikasi; set => _id_spesifikasi = value; }
        public string Xid_barang { get => _xid_barang; set => _xid_barang = value; }
        public string Rincian_spesifikasi { get => _rincian_spesifikasi; set => _rincian_spesifikasi = value; }
    }
}
