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
    }
}
