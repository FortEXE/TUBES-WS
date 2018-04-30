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
    }
}
