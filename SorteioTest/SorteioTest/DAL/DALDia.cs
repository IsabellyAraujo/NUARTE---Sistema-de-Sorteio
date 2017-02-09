using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SorteioTest.DAL
{
    public class DALDia
    {
        string connectionString = "";

        public DALDia()
        {
            connectionString = ConfigurationManager.ConnectionStrings
                      ["LocalSqlServer"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Dia> SelectAll()
        {
            Modelo.Dia aDia;
            List<Modelo.Dia> aListDia = new List<Modelo.Dia>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Select * from Dia";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aDia = new Modelo.Dia(
                        Convert.ToInt32(dr[0]),
                        Convert.ToDateTime(dr[1])
                        );
                    aListDia.Add(aDia);
                }
            }
            dr.Close();
            conn.Close();
            return aListDia;
        }
    }
}