using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;

namespace PARTS.Controllers
{
    public class RepositoryDetailBarang
    {
        private MySqlConnection myConn;

        public RepositoryDetailBarang()
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
            catch (Exception)
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

        public List<DetailBarang> getAll()
        {
            string query = "SELECT * FROM detail_barang;";

            OpenConnection();
            List<DetailBarang> hasil = myConn.Query<DetailBarang>(query).ToList();
            closeConnection();

            return hasil;
        }

        public List<DetailBarang> getByID(String id)
        {
            string query = "SELECT * FROM detail_barang WHERE ID_BARANG = '" + id + "';";

            OpenConnection();
            List<DetailBarang> hasil = myConn.Query<DetailBarang>(query).ToList();
            closeConnection();

            return hasil;
        }

        public void insertData(DetailBarang dtl)
        {
           int _id_detail_barang = dtl.Id_detail_barang;
           string _id_barang = dtl.Id_barang;
           string _nomor_seri_detail = dtl.Nomor_seri_detail;
           string _status_detail = dtl.Status_detail;
           string _keterangan_detail = dtl.Keterangan_detail;

           string query = "INSERT INTO detail_barang VALUES (null, '" + _id_barang + "', '" + _nomor_seri_detail + "', '" + _status_detail + "', '" + _keterangan_detail + "');";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void updateData(string Id, DetailBarang dtl)
        {
           int _id_detail_barang = dtl.Id_detail_barang;
           string _id_barang = dtl.Id_barang;
           string _nomor_seri_detail = dtl.Nomor_seri_detail;
           string _status_detail = dtl.Status_detail;
           string _keterangan_detail = dtl.Keterangan_detail;

            string query = "UPDATE detail_barang SET ID_BARANG = '" + _id_barang + "', NOMOR_SERI_DETAIL = '" + _nomor_seri_detail + "', STATUS_DETAIL = '" + _status_detail + "', KETERANGAN_DETAIL = '" + _keterangan_detail + "' WHERE ID_DETAIL_BARANG = " + _id_detail_barang + ";";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void deleteData(string Id)
        {
            string query = "DELETE FROM detail_barang WHERE ID_BARANG = '" + Id + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

    }
}
