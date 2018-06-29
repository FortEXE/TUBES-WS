using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Model
{
    public class Log
    {
        private int _id;
        private string _id_barang;
        private string _nomor_seri_detail;
        private DateTime _waktu;
        private string _status_lama;
        private string _status_baru;

        public int Id { get => _id; set => _id = value; }
        public string Id_barang { get => _id_barang; set => _id_barang = value; }
        public string Nomor_seri_detail { get => _nomor_seri_detail; set => _nomor_seri_detail = value; }
        public DateTime Waktu { get => _waktu; set => _waktu = value; }
        public string Status_lama { get => _status_lama; set => _status_lama = value; }
        public string Status_baru { get => _status_baru; set => _status_baru = value; }
    }
}
