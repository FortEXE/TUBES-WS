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

        public List<DetailBarang> getAll()
        {
            string query = "SELECT * FROM detail_barang;";

            OpenConnection();
            List<DetailBarang> hasil = myConn.Query<DetailBarang>(query).ToList();
            closeConnection();

            return hasil;
        }


    }
}
