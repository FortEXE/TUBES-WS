using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;

namespace PARTS.Controllers
{
    public class RepositorySpesifikasi
    {
        private MySqlConnection myConn;

        public RepositorySpesifikasi()
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

        public List<Spesifikasi> getAll()
        {
            string query = "SELECT * FROM spesifikasi;";

            OpenConnection();
            List<Spesifikasi> hasil = myConn.Query<Spesifikasi>(query).ToList();
            closeConnection();

            return hasil;
        }

        public Spesifikasi getByID(String id)
        {
            string query = "SELECT * FROM spesifikasi WHERE XID_BARANG = '" + id + "';";

            OpenConnection();
            Spesifikasi hasil = myConn.QuerySingle<Spesifikasi>(query);
            closeConnection();

            return hasil;
        }

        public void insertData(Spesifikasi spf)
        {
            int _id_spesifikasi = spf.Id_spesifikasi;
            string _xid_barang = spf.Xid_barang;
            string _rincian_spesifikasi = spf.Rincian_spesifikasi;

            string query = "INSERT INTO spesifikasi VALUES (null, '" + _xid_barang + "', '" + _rincian_spesifikasi + "');";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void updateData(int Id, Spesifikasi spf)
        {
            int _id_spesifikasi = spf.Id_spesifikasi;
            string _xid_barang = spf.Xid_barang;
            string _rincian_spesifikasi = spf.Rincian_spesifikasi;

            string query =
                "UPDATE spesifikasi SET XID_BARANG = '" + _xid_barang + "', RINCIAN_SPESIFIKASI = '" + _rincian_spesifikasi + "' WHERE ID_SPESIFIKASI = " + _id_spesifikasi + ";";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void deleteData(string Id)
        {
            string query = "DELETE FROM spesifikasi WHERE XID_BARANG = " + Id + ";";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

    }
}
