using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SorteioTest.DAL
{
    public class DALDiaEscolhido
    {
        string connectionString = "";

        public DALDiaEscolhido()
        {
            connectionString = ConfigurationManager.ConnectionStrings
                      ["LocalSqlServer"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.DiaEscolhido obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("INSERT INTO DiaEscolhido (espectador_id, dia_id) VALUES (@espectador_id, @dia_id)", conn);
            cmd.Parameters.AddWithValue("@espectador_id", obj.Espectador_id);
            cmd.Parameters.AddWithValue("@dia_id", obj.Dia_id);

            cmd.ExecuteNonQuery();
        }
    }
}