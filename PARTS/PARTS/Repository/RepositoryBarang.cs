using System;
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
    }
}
