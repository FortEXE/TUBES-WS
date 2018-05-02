using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;

namespace PARTS.Controllers
{
    public class RepositoryKategori
    {
        private MySqlConnection myConn;

        public RepositoryKategori()
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

        public List<Kategori> getAll()
        {
            string query = "SELECT * FROM kategori;";

            OpenConnection();
            List<Kategori> hasil = myConn.Query<Kategori>(query).ToList();
            closeConnection();

            return hasil;
        }

        public void insertData(Kategori ktg)
        {
            string _id_kategori = ktg.Id_kategori;
            string _nama_kategori = ktg.Nama_kategori;

            string query = "INSERT INTO kategori VALUES ('" + _id_kategori + "', '" + _nama_kategori + "');";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void updateData(string Id, Kategori ktg)
        {
            string _id_kategori = ktg.Id_kategori;
            string _nama_kategori = ktg.Nama_kategori;

            string query =
                "UPDATE kategori SET NAMA_KATEGORI = '" + _nama_kategori + "' WHERE ID_KATEGORI = '" + _id_kategori + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void deleteData(string Id)
        {
            string query = "DELETE FROM kategori WHERE ID_KATEGORI = '" + Id + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

    }
}
