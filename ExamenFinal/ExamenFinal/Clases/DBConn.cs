using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenFinal.Clases
{
    public class DBConn
    {
        public static SqlConnection Connection()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["VEHICULOSConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;
        }
    }
}