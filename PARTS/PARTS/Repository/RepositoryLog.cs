using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;
using PARTS.Model;

namespace PARTS.Controllers
{
    public class RepositoryLog
    {
        private MySqlConnection myConn;

        public RepositoryLog()
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

        public List<Log> getAll()
        {
            string query = "SELECT * FROM log_detail_barang;";

            OpenConnection();
            List<Log> hasil = myConn.Query<Log>(query).ToList();
            closeConnection();

            return hasil;
        }
    }
}
