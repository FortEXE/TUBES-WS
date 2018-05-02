using Dapper;
using MySql.Data.MySqlClient;
using PARTS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Repository
{
    public class RepositoryPengguna
    {
        private MySqlConnection myConn;

        public RepositoryPengguna()
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

        public List<Pengguna> getAll()
        {
            string query = "SELECT * FROM PENGGUNA;";

            OpenConnection();
            List<Pengguna> hasil = myConn.Query<Pengguna>(query).ToList();
            closeConnection();

            return hasil;
        }

        public Pengguna getByID(String id)
        {
            string query = "SELECT * FROM PENGGUNA WHERE ID_PENGGUNA = "+ id +";";

            OpenConnection();
            Pengguna hasil = myConn.QuerySingle<Pengguna>(query);
            closeConnection();

            return hasil;
        }

        public Pengguna getByUserName(String username)
        {
            string query = "SELECT * FROM PENGGUNA WHERE username = '" + username + "';";

            OpenConnection();
            Pengguna hasil = myConn.QuerySingle<Pengguna>(query);
            closeConnection();

            return hasil;
        }

        public void insertData(Pengguna pgn)
        {

            string query = "INSERT INTO pengguna VALUES ('" + pgn.Id_pengguna + "', '" + pgn.Nama + "', '" + pgn.Username + "', '" + pgn.Email + "', " + pgn.User_type + ", " + pgn.Password + ");";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void updateData(string Id, Pengguna pgn)
        {

            string query =
                "UPDATE barang SET XID_KATEGORI = '" + pgn.Id_pengguna + "', '" + pgn.Nama + "', '" + pgn.Username + "', '" + pgn.Email + "', " + pgn.User_type + ", " + pgn.Password + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }

        public void deleteData(string Id)
        {
            string query = "DELETE FROM pelanggan WHERE ID_PELANGGAN = '" + Id + "';";

            OpenConnection();
            var hasil = myConn.Execute(query);
            closeConnection();
        }
    }
}
