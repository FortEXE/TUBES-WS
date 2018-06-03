using PARTS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Repository
{
    public class RepositoryDictionary
    {


        public List<Dictionaries> getDictionary()
        {
            List<Dictionaries> dictionary = new List<Dictionaries>();
            Dictionaries pengguna = new Dictionaries();
            pengguna.Table_name = "Pengguna";
            pengguna.Dictionary.Add("id_pengguna", "int(11)");
            pengguna.Dictionary.Add("nama", "varchar(255)");
            pengguna.Dictionary.Add("username", "varchar(255)");
            pengguna.Dictionary.Add("email", "varchar(255)");
            pengguna.Dictionary.Add("user_type", "varchar(255)");
            pengguna.Dictionary.Add("password", "varchar(255)");
            

            dictionary.Add(pengguna);

            Dictionaries kategori = new Dictionaries();
            pengguna.Table_name = "Kategori";
            kategori.Dictionary.Add("id_kategori", "varchar(255)");
            kategori.Dictionary.Add("nama_kategori", "varchar(255)");

            dictionary.Add(kategori);

            Dictionaries detail_barang = new Dictionaries();
            pengguna.Table_name = "Detail_Barang";
            detail_barang.Dictionary.Add("id_detail_barang", "int(11)");
            detail_barang.Dictionary.Add("id_barang", "varchar(255)");
            detail_barang.Dictionary.Add("nomor_seri_detail", "varchar(255)");
            detail_barang.Dictionary.Add("status_detail", "enum('ready','pending','defaced','reserved')");
            detail_barang.Dictionary.Add("keterangan_detail", "text");

            dictionary.Add(detail_barang);

            Dictionaries spesifikasi = new Dictionaries();
            pengguna.Table_name = "Spesifikasi";
            spesifikasi.Dictionary.Add("id_spesifikasi", "int(255)");
            spesifikasi.Dictionary.Add("xid_barang", "varchar(255)");
            spesifikasi.Dictionary.Add("rincian_spesifikasi", "text");

            dictionary.Add(spesifikasi);

            Dictionaries barang = new Dictionaries();
            pengguna.Table_name = "Barang";
            barang.Dictionary.Add("id_barang", "varchar(255)");
            barang.Dictionary.Add("xid_kategori", "varchar(255)");
            barang.Dictionary.Add("xid_pengguna", "int(11)");
            barang.Dictionary.Add("nama_barang", "text");
            barang.Dictionary.Add("merk_barang", "text");
            barang.Dictionary.Add("harga_barang", "int(11)");
            barang.Dictionary.Add("stok_barang", "int(11)");
            barang.Dictionary.Add("image_barang", "int(11)");

            dictionary.Add(barang);

            return dictionary;
        }
    }
}
