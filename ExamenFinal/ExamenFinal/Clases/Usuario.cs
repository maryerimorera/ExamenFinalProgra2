using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ExamenFinal.Clases
{
    public class Usuario
    {
        public static int IdUsuario { get; set; }
        public static string User { get; set; }
        public static string Clave { get; set; }
        public static string Nombre { get; set; }
        public static string Apellido { get; set; }



        public static int ValidarUsuario(string Usuario, string Clave)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.Connection())
                {
                    SqlCommand cmd = new SqlCommand("VALIDAR_USUARIO", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@USUARIO", User));
                    cmd.Parameters.Add(new SqlParameter("@CLAVE", Clave));
                    ;

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                            Nombre = rdr[2].ToString();
                            Apellido = rdr[3].ToString();
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }

        public static int AgregarUsuario(string Usuario, string Clave, string Nombre, string Apellido)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.Connection())
                {
                    SqlCommand cmd = new SqlCommand("AGREGAR_USUARIO", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@USUARIO", User));
                    cmd.Parameters.Add(new SqlParameter("@CLAVE", Clave));
                    cmd.Parameters.Add(new SqlParameter("@NOMBRE", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@APELLIDO", Apellido));
                    ;

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }
}