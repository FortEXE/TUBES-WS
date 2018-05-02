﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;

namespace PARTS.Controllers
{
    public class RepositoryBarang
    {
        private MySqlConnection myConn;

        public RepositoryBarang()
        {
            string connectionString = "Server=localhost;Database=db_gudangbarang;Username=root;Password=";
            myConn = new MySqlConnection(connectionString);
        }

        public void OpenConnection()
        {
            try
            {
                myConn.Open();
            }
            catch (Exception ex)
            {
            }
        }

        public void closeConnection()
        {
            try
            {
                myConn.Close();
            }
            catch (Exception ex)
            {
            }
        }

        public List<Barang> getAll()
        {
            string query = "SELECT * FROM barang;";

            OpenConnection();
            List<Barang> hasil = myConn.Query<Barang>(query).ToList();
            closeConnection();

            return hasil;
        }

        public void insertData(Barang brg)
        {
            string _id_barang = brg.Id_barang;
            string _xid_kategori = brg.Xid_kategori;
            string _nama_barang = brg.Nama_barang;
            string _merk_barang = brg.Merk_barang;
            string _type_barang = brg.Type_barang;
            int _harga_barang = brg.Harga_barang;
            int _stok_barang = brg.Stok_barang;

            string query = "INSERT INTO barang VALUES ('" + _id_barang + "', '" + _xid_kategori + "', '" + _nama_barang + "', '" + _merk_barang + "', '" + _type_barang + "', " + _harga_barang + ", " + _stok_barang + ");";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void updateData(string Id, Barang brg)
        {
            string _id_barang = brg.Id_barang;
            string _xid_kategori = brg.Xid_kategori;
            string _nama_barang = brg.Nama_barang;
            string _merk_barang = brg.Merk_barang;
            string _type_barang = brg.Type_barang;
            int _harga_barang = brg.Harga_barang;
            int _stok_barang = brg.Stok_barang;

            string query =
                "UPDATE barang SET XID_KATEGORI = '" + _id_barang + "', NAMA_BARANG = '" + _nama_barang + "', MERK_BARANG = '" + _merk_barang + "', TYPE_BARANG = '" + _type_barang
                + "', HARGA_BARANG = " + _harga_barang + ", STOK_BARANG = " + _stok_barang + " WHERE ID_BARANG = '" + _id_barang + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void deleteData(string Id)
        {
            string query = "DELETE FROM barang WHERE ID_BARANG = '" + Id + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

    }
}
