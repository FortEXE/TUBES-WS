using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Controllers
{
    public class Barang
    {
        private string _id_barang;
        private string _xid_kategori;
        private string _nama_barang;
        private string _merk_barang;
        private string _type_barang;
        private int _harga_barang;
        private int _stok_barang;

        Barang() { }

        public string Id_barang { get => _id_barang; set => _id_barang = value; }
        public string Xid_kategori { get => _xid_kategori; set => _xid_kategori = value; }
        public string Nama_barang { get => _nama_barang; set => _nama_barang = value; }
        public string Merk_barang { get => _merk_barang; set => _merk_barang = value; }
        public string Type_barang { get => _type_barang; set => _type_barang = value; }
        public int Harga_barang { get => _harga_barang; set => _harga_barang = value; }
        public int Stok_barang { get => _stok_barang; set => _stok_barang = value; }
    }
}
