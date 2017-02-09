using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SorteioTest.DAL
{
    public class DALEspectador
    {
        string connectionString = "";

        public DALEspectador()
        {
            connectionString = ConfigurationManager.ConnectionStrings
                      ["LocalSqlServer"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Espectador obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("INSERT INTO Espectador (nome, rg) VALUES (@nome, @rg)", conn);
            cmd.Parameters.AddWithValue("@nome", obj.Nome);
            cmd.Parameters.AddWithValue("@rg", obj.Rg);

            cmd.ExecuteNonQuery();
        }
    }
}