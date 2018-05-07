using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Controllers
{
    public class DetailBarang
    {
        private int _id_detail_barang;
        private string _id_barang;
        private string _nomor_seri_detail;
        private string _status_detail;
        private string _keterangan_detail;

        DetailBarang() { }
        //

        public int Id_detail_barang { get => _id_detail_barang; set => _id_detail_barang = value; }
        public string Id_barang { get => _id_barang; set => _id_barang = value; }
        public string Nomor_seri_detail { get => _nomor_seri_detail; set => _nomor_seri_detail = value; }
        public string Status_detail { get => _status_detail; set => _status_detail = value; }
        public string Keterangan_detail { get => _keterangan_detail; set => _keterangan_detail = value; }
    }
}
